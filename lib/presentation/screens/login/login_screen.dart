import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_practice/core/constant/auth.dart';
import 'package:http_practice/presentation/screens/login/widget/email_textformfield.dart';
import 'package:http_practice/presentation/screens/login/widget/login_button.dart';
import 'package:http_practice/presentation/screens/login/widget/password_textformfield.dart';

import '../../bloc/auth/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    AuthSystem.initializeFirebase(context);
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<AuthBloc>().state;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: state.when(
              initial: () {
                return Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 200,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: RichText(
                                        text: const TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: 'Login \n',
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900)),
                                      TextSpan(
                                          text: 'Please sign in to continue',
                                          style:
                                              TextStyle(fontSize: 20, color: Colors.grey))
                                    ])),
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: EmailTextFormField(controller: emailController),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      PasswordTextFormField(controller: passwordController),
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
                                        onPressed: () {
                                          if (_formKey.currentState!.validate()) {
                                            FocusScope.of(context).unfocus();
                                            context.read<AuthBloc>().add(AuthLoginEvent(
                                                context: context,
                                                email: emailController.text,
                                                password: passwordController.text));
                                          } else {
                                            return;
                                          }
                                        }),
                                  ),
                                ),
                                const Spacer(),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                  const TextSpan(
                                      text: 'Don\'t have an account ? ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: 'Sign up',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => Navigator.pushNamed(
                                            context, '/register_screen'),
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
                          );
              },
              loading: () => const CircularProgressIndicator(),
              success: () => const CircularProgressIndicator(),
              error: () => const Text('Something get wrong')
          ),
        ),

      ),
    );
  }
}
