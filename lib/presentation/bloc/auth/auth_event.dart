part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  factory AuthEvent.login(
      {required String email,
      required String password,
      required BuildContext context}) = AuthLoginEvent;
  factory AuthEvent.signIn({required String name,required String email,required String password,required BuildContext context}) = AuthSignInEvent;
}


