import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Functions {
  static showSnackBar(String text, BuildContext context, Color color) {
    final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        width: 200,
        duration: const Duration(milliseconds: 1500),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        backgroundColor: color,
        content: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ));
    //I do it when we click multiple time to button and he is stack all message
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class AuthSystem {

  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static String errorMessage = '';

  static Future<void> login(TextEditingController emailController,
      TextEditingController passwordController,BuildContext context) async {
    try {
      final User? user = (await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      )).user;
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
      Fluttertoast.showToast(msg: 'Вы успешно вошли');
    }on FirebaseAuthException catch(error){
      print(error.code);
      switch(error.code){
        case "email-already-in-use":
          errorMessage = "Email already taken";
          break;
        case "wrong-password":
          errorMessage = "Your password is wrong.";
          break;
        case "user-disabled":
          errorMessage = "User with this email has been disabled.";
          break;
        case "too-many-requests":
          errorMessage = "Too many requests";
          break;
        case "operation-not-allowed":
          errorMessage = "Signing in with Email and Password is not enabled.";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
      Fluttertoast.showToast(msg: errorMessage);
    }
    emailController.text = '';
    passwordController.text = '';
  }

  static Future<void> register(TextEditingController emailController,
      TextEditingController passwordController,BuildContext context) async {
    try{
      final User? user = (await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user;
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
      Fluttertoast.showToast(msg: 'Вы успешно зарегистрировались');
    }on FirebaseAuthException catch(error){
      print(error.code);
      switch(error.code){
        case "email-already-in-use":
          errorMessage = "This email already taken";
          break;
        case "wrong-password":
          errorMessage = "Your password is wrong.";
          break;
        case "user-disabled":
          errorMessage = "User with this email has been disabled.";
          break;
        case "too-many-requests":
          errorMessage = "Too many requests";
          break;
        case "operation-not-allowed":
          errorMessage = "Signing in with Email and Password is not enabled.";
          break;
        case "weak-password":
          errorMessage = "Your password must be have 6 characters";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
      Fluttertoast.showToast(msg: errorMessage);
    }


    emailController.text = '';
    passwordController.text = '';


  }

 static Future<FirebaseApp> initializeFirebase(BuildContext context) async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }
    return firebaseApp;
  }
}
