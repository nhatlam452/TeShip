// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AlertModel alert) failed,
    required TResult Function(UserModel user) authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AlertModel alert)? failed,
    TResult? Function(UserModel user)? authenticated,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AlertModel alert)? failed,
    TResult Function(UserModel user)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthFailedState value)? failed,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthLoadingStateCopyWith<$Res> {
  factory _$$_AuthLoadingStateCopyWith(
          _$_AuthLoadingState value, $Res Function(_$_AuthLoadingState) then) =
      __$$_AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLoadingState>
    implements _$$_AuthLoadingStateCopyWith<$Res> {
  __$$_AuthLoadingStateCopyWithImpl(
      _$_AuthLoadingState _value, $Res Function(_$_AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLoadingState implements _AuthLoadingState {
  const _$_AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AlertModel alert) failed,
    required TResult Function(UserModel user) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AlertModel alert)? failed,
    TResult? Function(UserModel user)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AlertModel alert)? failed,
    TResult Function(UserModel user)? authenticated,
    TResult Function()? unauthenticated,
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
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthFailedState value)? failed,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoadingState implements AuthState {
  const factory _AuthLoadingState() = _$_AuthLoadingState;
}

/// @nodoc
abstract class _$$_AuthFailedStateCopyWith<$Res> {
  factory _$$_AuthFailedStateCopyWith(
          _$_AuthFailedState value, $Res Function(_$_AuthFailedState) then) =
      __$$_AuthFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});

  $AlertModelCopyWith<$Res> get alert;
}

/// @nodoc
class __$$_AuthFailedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthFailedState>
    implements _$$_AuthFailedStateCopyWith<$Res> {
  __$$_AuthFailedStateCopyWithImpl(
      _$_AuthFailedState _value, $Res Function(_$_AuthFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
  }) {
    return _then(_$_AuthFailedState(
      alert: null == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as AlertModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertModelCopyWith<$Res> get alert {
    return $AlertModelCopyWith<$Res>(_value.alert, (value) {
      return _then(_value.copyWith(alert: value));
    });
  }
}

/// @nodoc

class _$_AuthFailedState implements _AuthFailedState {
  const _$_AuthFailedState({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'AuthState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailedState &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFailedStateCopyWith<_$_AuthFailedState> get copyWith =>
      __$$_AuthFailedStateCopyWithImpl<_$_AuthFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AlertModel alert) failed,
    required TResult Function(UserModel user) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return failed(alert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AlertModel alert)? failed,
    TResult? Function(UserModel user)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return failed?.call(alert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AlertModel alert)? failed,
    TResult Function(UserModel user)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(alert);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthFailedState value)? failed,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AuthFailedState implements AuthState {
  const factory _AuthFailedState({required final AlertModel alert}) =
      _$_AuthFailedState;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_AuthFailedStateCopyWith<_$_AuthFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthAuthenticatedStateCopyWith<$Res> {
  factory _$$_AuthAuthenticatedStateCopyWith(_$_AuthAuthenticatedState value,
          $Res Function(_$_AuthAuthenticatedState) then) =
      __$$_AuthAuthenticatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthAuthenticatedState>
    implements _$$_AuthAuthenticatedStateCopyWith<$Res> {
  __$$_AuthAuthenticatedStateCopyWithImpl(_$_AuthAuthenticatedState _value,
      $Res Function(_$_AuthAuthenticatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AuthAuthenticatedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AuthAuthenticatedState implements _AuthAuthenticatedState {
  const _$_AuthAuthenticatedState({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthAuthenticatedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthAuthenticatedStateCopyWith<_$_AuthAuthenticatedState> get copyWith =>
      __$$_AuthAuthenticatedStateCopyWithImpl<_$_AuthAuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AlertModel alert) failed,
    required TResult Function(UserModel user) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AlertModel alert)? failed,
    TResult? Function(UserModel user)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AlertModel alert)? failed,
    TResult Function(UserModel user)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthFailedState value)? failed,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticatedState implements AuthState {
  const factory _AuthAuthenticatedState({required final UserModel user}) =
      _$_AuthAuthenticatedState;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$_AuthAuthenticatedStateCopyWith<_$_AuthAuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthUnauthenticatedStateCopyWith<$Res> {
  factory _$$_AuthUnauthenticatedStateCopyWith(
          _$_AuthUnauthenticatedState value,
          $Res Function(_$_AuthUnauthenticatedState) then) =
      __$$_AuthUnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthUnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthUnauthenticatedState>
    implements _$$_AuthUnauthenticatedStateCopyWith<$Res> {
  __$$_AuthUnauthenticatedStateCopyWithImpl(_$_AuthUnauthenticatedState _value,
      $Res Function(_$_AuthUnauthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthUnauthenticatedState implements _AuthUnauthenticatedState {
  const _$_AuthUnauthenticatedState();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AlertModel alert) failed,
    required TResult Function(UserModel user) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AlertModel alert)? failed,
    TResult? Function(UserModel user)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AlertModel alert)? failed,
    TResult Function(UserModel user)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthFailedState value) failed,
    required TResult Function(_AuthAuthenticatedState value) authenticated,
    required TResult Function(_AuthUnauthenticatedState value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthFailedState value)? failed,
    TResult? Function(_AuthAuthenticatedState value)? authenticated,
    TResult? Function(_AuthUnauthenticatedState value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthFailedState value)? failed,
    TResult Function(_AuthAuthenticatedState value)? authenticated,
    TResult Function(_AuthUnauthenticatedState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnauthenticatedState implements AuthState {
  const factory _AuthUnauthenticatedState() = _$_AuthUnauthenticatedState;
}
