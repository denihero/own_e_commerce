import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthSystem {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static String errorMessage = '';
  static User? user;

  static Future<void> login(String emailController,
      String passwordController, BuildContext context) async {
    try {
      final User? user = (await auth.signInWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      ))
          .user;
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
      Fluttertoast.showToast(msg: 'Вы успешно вошли');
    } on FirebaseAuthException catch (error) {
      print(error.code);
      switch (error.code) {
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
    emailController = '';
    passwordController = '';
  }

  static Future<void> register(
      {required String name,
      required String emailController,
      required String passwordController,
      required BuildContext context}) async {
    try {
      final UserCredential userCredential =
          (await auth.createUserWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      ));
      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user?.reload();
      user = auth.currentUser;

      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
      Fluttertoast.showToast(msg: 'Вы успешно зарегистрировались');
    } on FirebaseAuthException catch (error) {
      print(error.code);
      switch (error.code) {
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

    emailController = '';
    passwordController = '';
    name = '';
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
