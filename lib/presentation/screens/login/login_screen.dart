import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/login/widget/email_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                  children:  <TextSpan>[
                    TextSpan(text: 'Login \n',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w900)),
                    TextSpan(text: 'Please sign in to continue',style: TextStyle(fontSize: 20,color: Colors.grey))
                  ]
                )
            ),
            const EmailTextFormField(),
            const Spacer(),
            RichText(
                text: const TextSpan(
                    children:  <TextSpan>[
                      TextSpan(text: 'Don\'t have an account ?',style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w600)),
                      TextSpan(text: 'Sign up',style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.w600))
                    ]
                )
            ),

          ],
        ),
      ),
    );
  }
}
