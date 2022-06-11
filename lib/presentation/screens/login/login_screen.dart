import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/login/widget/email_textformfield.dart';
import 'package:http_practice/presentation/screens/login/widget/login_button.dart';
import 'package:http_practice/presentation/screens/login/widget/password_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: RichText(
                    text: const TextSpan(
                      children:  <TextSpan>[
                        TextSpan(text: 'Login \n',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w900)),
                        TextSpan(text: 'Please sign in to continue',style: TextStyle(fontSize: 20,color: Colors.grey))
                      ]
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: EmailTextFormField(
                  controller: emailController
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PasswordTextFormField(
                  controller:passwordController
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: LoginButton(
                    title: 'Login',
                    onPressed: () {}
                ),
              ),
            ),
            const Spacer(),
            RichText(
                text: TextSpan(
                    children:  <TextSpan>[
                      const TextSpan(text: 'Don\'t have an account ? ',style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: 'Sign up',
                          recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, '/register_screen'),
                          style: const TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.w600))
                    ]
                )
            ),
            const SizedBox(
              height: 15,
            )

          ],
        ),
      ),
    );
  }
}
