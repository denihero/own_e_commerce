import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:http_practice/core/constant/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {

    on<AuthLogin>((event, emit) {
     emit(AuthLoading());
     try{
       AuthSystem.login(event.emailController, event.passwordController,event.context);
       emit(AuthSuccess());
     }catch(err,dtl){
       print(err);
       print(dtl);
       emit(AuthError());
     }
    });


    on<AuthRegistered>((event, emit) async {
      emit(AuthLoading());
      try{
        await AuthSystem.register(name: event.name, emailController: event.emailController, passwordController: event.passwordController, context: event.context);
        emit(AuthSuccess());
      }catch(err,dtl){
        print(err);
        print(dtl);
        emit(AuthError());
      }
    });

  }
}
