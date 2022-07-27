part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthLogin extends AuthEvent {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final BuildContext context;

  AuthLogin({required this.emailController,required this.passwordController,required this.context});

}
class AuthRegistered extends AuthEvent {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final BuildContext context;

  AuthRegistered({required this.emailController,required this.passwordController,required this.context});
}
