// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(
            String name, String email, String password, BuildContext context)
        signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(
            String name, String email, String password, BuildContext context)?
        signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(
            String name, String email, String password, BuildContext context)?
        signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginEvent value) login,
    required TResult Function(AuthSignInEvent value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginEvent value)? login,
    TResult Function(AuthSignInEvent value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginEvent value)? login,
    TResult Function(AuthSignInEvent value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc
abstract class _$$AuthLoginEventCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AuthLoginEventCopyWith(
          _$AuthLoginEvent value, $Res Function(_$AuthLoginEvent) then) =
      __$$AuthLoginEventCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class __$$AuthLoginEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthLoginEventCopyWith<$Res> {
  __$$AuthLoginEventCopyWithImpl(
      _$AuthLoginEvent _value, $Res Function(_$AuthLoginEvent) _then)
      : super(_value, (v) => _then(v as _$AuthLoginEvent));

  @override
  _$AuthLoginEvent get _value => super._value as _$AuthLoginEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? context = freezed,
  }) {
    return _then(_$AuthLoginEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AuthLoginEvent implements AuthLoginEvent {
  _$AuthLoginEvent(
      {required this.email, required this.password, required this.context});

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$AuthLoginEventCopyWith<_$AuthLoginEvent> get copyWith =>
      __$$AuthLoginEventCopyWithImpl<_$AuthLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(
            String name, String email, String password, BuildContext context)
        signIn,
  }) {
    return login(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(
            String name, String email, String password, BuildContext context)?
        signIn,
  }) {
    return login?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(
            String name, String email, String password, BuildContext context)?
        signIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginEvent value) login,
    required TResult Function(AuthSignInEvent value) signIn,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginEvent value)? login,
    TResult Function(AuthSignInEvent value)? signIn,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginEvent value)? login,
    TResult Function(AuthSignInEvent value)? signIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthLoginEvent implements AuthEvent {
  factory AuthLoginEvent(
      {required final String email,
      required final String password,
      required final BuildContext context}) = _$AuthLoginEvent;

  @override
  String get email;
  @override
  String get password;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$AuthLoginEventCopyWith<_$AuthLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignInEventCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AuthSignInEventCopyWith(
          _$AuthSignInEvent value, $Res Function(_$AuthSignInEvent) then) =
      __$$AuthSignInEventCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String password, BuildContext context});
}

/// @nodoc
class __$$AuthSignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthSignInEventCopyWith<$Res> {
  __$$AuthSignInEventCopyWithImpl(
      _$AuthSignInEvent _value, $Res Function(_$AuthSignInEvent) _then)
      : super(_value, (v) => _then(v as _$AuthSignInEvent));

  @override
  _$AuthSignInEvent get _value => super._value as _$AuthSignInEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? context = freezed,
  }) {
    return _then(_$AuthSignInEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AuthSignInEvent implements AuthSignInEvent {
  _$AuthSignInEvent(
      {required this.name,
      required this.email,
      required this.password,
      required this.context});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.signIn(name: $name, email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInEvent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      __$$AuthSignInEventCopyWithImpl<_$AuthSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        login,
    required TResult Function(
            String name, String email, String password, BuildContext context)
        signIn,
  }) {
    return signIn(name, email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(
            String name, String email, String password, BuildContext context)?
        signIn,
  }) {
    return signIn?.call(name, email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        login,
    TResult Function(
            String name, String email, String password, BuildContext context)?
        signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(name, email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginEvent value) login,
    required TResult Function(AuthSignInEvent value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginEvent value)? login,
    TResult Function(AuthSignInEvent value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginEvent value)? login,
    TResult Function(AuthSignInEvent value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthSignInEvent implements AuthEvent {
  factory AuthSignInEvent(
      {required final String name,
      required final String email,
      required final String password,
      required final BuildContext context}) = _$AuthSignInEvent;

  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_AuthStateInitialCopyWith<$Res> {
  factory _$$_AuthStateInitialCopyWith(
          _$_AuthStateInitial value, $Res Function(_$_AuthStateInitial) then) =
      __$$_AuthStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateInitialCopyWith<$Res> {
  __$$_AuthStateInitialCopyWithImpl(
      _$_AuthStateInitial _value, $Res Function(_$_AuthStateInitial) _then)
      : super(_value, (v) => _then(v as _$_AuthStateInitial));

  @override
  _$_AuthStateInitial get _value => super._value as _$_AuthStateInitial;
}

/// @nodoc

class _$_AuthStateInitial implements _AuthStateInitial {
  _$_AuthStateInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthStateInitial implements AuthState {
  factory _AuthStateInitial() = _$_AuthStateInitial;
}

/// @nodoc
abstract class _$$_AuthStateLoadingCopyWith<$Res> {
  factory _$$_AuthStateLoadingCopyWith(
          _$_AuthStateLoading value, $Res Function(_$_AuthStateLoading) then) =
      __$$_AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateLoadingCopyWith<$Res> {
  __$$_AuthStateLoadingCopyWithImpl(
      _$_AuthStateLoading _value, $Res Function(_$_AuthStateLoading) _then)
      : super(_value, (v) => _then(v as _$_AuthStateLoading));

  @override
  _$_AuthStateLoading get _value => super._value as _$_AuthStateLoading;
}

/// @nodoc

class _$_AuthStateLoading implements _AuthStateLoading {
  _$_AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoading implements AuthState {
  factory _AuthStateLoading() = _$_AuthStateLoading;
}

/// @nodoc
abstract class _$$_AuthStateSuccessCopyWith<$Res> {
  factory _$$_AuthStateSuccessCopyWith(
          _$_AuthStateSuccess value, $Res Function(_$_AuthStateSuccess) then) =
      __$$_AuthStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateSuccessCopyWith<$Res> {
  __$$_AuthStateSuccessCopyWithImpl(
      _$_AuthStateSuccess _value, $Res Function(_$_AuthStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_AuthStateSuccess));

  @override
  _$_AuthStateSuccess get _value => super._value as _$_AuthStateSuccess;
}

/// @nodoc

class _$_AuthStateSuccess implements _AuthStateSuccess {
  _$_AuthStateSuccess();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthStateSuccess implements AuthState {
  factory _AuthStateSuccess() = _$_AuthStateSuccess;
}

/// @nodoc
abstract class _$$_AuthStateErrorCopyWith<$Res> {
  factory _$$_AuthStateErrorCopyWith(
          _$_AuthStateError value, $Res Function(_$_AuthStateError) then) =
      __$$_AuthStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateErrorCopyWith<$Res> {
  __$$_AuthStateErrorCopyWithImpl(
      _$_AuthStateError _value, $Res Function(_$_AuthStateError) _then)
      : super(_value, (v) => _then(v as _$_AuthStateError));

  @override
  _$_AuthStateError get _value => super._value as _$_AuthStateError;
}

/// @nodoc

class _$_AuthStateError implements _AuthStateError {
  _$_AuthStateError();

  @override
  String toString() {
    return 'AuthState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateSuccess value) success,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateSuccess value)? success,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError implements AuthState {
  factory _AuthStateError() = _$_AuthStateError;
}
