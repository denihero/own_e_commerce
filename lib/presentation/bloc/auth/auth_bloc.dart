import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_practice/core/constant/auth.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {

    on<AuthLoginEvent>((event, emit) {
      emit(AuthState.loading());
      try {
        AuthSystem.login(
            event.email, event.password, event.context);
        emit(AuthState.success());
      } catch (err, dtl) {
        print(err);
        print(dtl);
        emit(AuthState.error());
      }
    });

    on<AuthSignInEvent>((event, emit) async {
      emit(AuthState.loading());
      try {
        await AuthSystem.register(
            name: event.name,
            emailController: event.email,
            passwordController: event.password,
            context: event.context);
        emit(AuthState.success());
      } catch (err, dtl) {
        print(err);
        print(dtl);
        emit(AuthState.error());
      }
    });
  }
}
