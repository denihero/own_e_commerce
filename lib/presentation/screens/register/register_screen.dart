import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/login/widget/email_textformfield.dart';
import 'package:http_practice/presentation/screens/login/widget/login_button.dart';
import 'package:http_practice/presentation/screens/login/widget/password_textformfield.dart';
import 'package:http_practice/presentation/screens/register/widget/name_textformfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
  TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Create Account',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w900)),
                    ])),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: EmailTextFormField(controller: emailController),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PasswordTextFormField(controller: passwordController),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 14, top: 15),
                child: LoginButton(
                    title: 'Sign up',
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _register(
                            emailController,
                            passwordController
                        );
                        emailController.text = '';
                        passwordController.text = '';
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Вы успешно зарегистрировались')
                          )
                        );
                        Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                      }
                      return null;
                    }),
              ),
            ),
            const Spacer(),
            RichText(
                text: TextSpan(children: <TextSpan>[
                  const TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: 'Sign in',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/login', (route) => false),
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                          fontWeight: FontWeight.w600))
                ])),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }

  void _register(TextEditingController _emailController,
      TextEditingController _passwordController) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final User? user = (await
    _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    )
    ).user;
  }

}
