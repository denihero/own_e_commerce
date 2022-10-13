part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState{
  factory AuthState.initial() = _AuthStateInitial;
  factory AuthState.loading() = _AuthStateLoading;
  factory AuthState.success() = _AuthStateSuccess;
  factory AuthState.error() = _AuthStateError;
}
