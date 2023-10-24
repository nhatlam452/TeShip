// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(BaseResponse response) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(BaseResponse response)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(BaseResponse response)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordStateFailed value) failed,
    required TResult Function(_ChangePasswordLoadingState value) loading,
    required TResult Function(_ChangePasswordStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePasswordStateFailed value)? failed,
    TResult? Function(_ChangePasswordLoadingState value)? loading,
    TResult? Function(_ChangePasswordStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordStateFailed value)? failed,
    TResult Function(_ChangePasswordLoadingState value)? loading,
    TResult Function(_ChangePasswordStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangePasswordStateFailedCopyWith<$Res> {
  factory _$$_ChangePasswordStateFailedCopyWith(
          _$_ChangePasswordStateFailed value,
          $Res Function(_$_ChangePasswordStateFailed) then) =
      __$$_ChangePasswordStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});

  $AlertModelCopyWith<$Res> get alert;
}

/// @nodoc
class __$$_ChangePasswordStateFailedCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res,
        _$_ChangePasswordStateFailed>
    implements _$$_ChangePasswordStateFailedCopyWith<$Res> {
  __$$_ChangePasswordStateFailedCopyWithImpl(
      _$_ChangePasswordStateFailed _value,
      $Res Function(_$_ChangePasswordStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
  }) {
    return _then(_$_ChangePasswordStateFailed(
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

class _$_ChangePasswordStateFailed implements _ChangePasswordStateFailed {
  const _$_ChangePasswordStateFailed({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'ChangePasswordState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordStateFailed &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordStateFailedCopyWith<_$_ChangePasswordStateFailed>
      get copyWith => __$$_ChangePasswordStateFailedCopyWithImpl<
          _$_ChangePasswordStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(BaseResponse response) success,
  }) {
    return failed(alert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(BaseResponse response)? success,
  }) {
    return failed?.call(alert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(BaseResponse response)? success,
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
    required TResult Function(_ChangePasswordStateFailed value) failed,
    required TResult Function(_ChangePasswordLoadingState value) loading,
    required TResult Function(_ChangePasswordStateSuccess value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePasswordStateFailed value)? failed,
    TResult? Function(_ChangePasswordLoadingState value)? loading,
    TResult? Function(_ChangePasswordStateSuccess value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordStateFailed value)? failed,
    TResult Function(_ChangePasswordLoadingState value)? loading,
    TResult Function(_ChangePasswordStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordStateFailed implements ChangePasswordState {
  const factory _ChangePasswordStateFailed({required final AlertModel alert}) =
      _$_ChangePasswordStateFailed;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateFailedCopyWith<_$_ChangePasswordStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordLoadingStateCopyWith<$Res> {
  factory _$$_ChangePasswordLoadingStateCopyWith(
          _$_ChangePasswordLoadingState value,
          $Res Function(_$_ChangePasswordLoadingState) then) =
      __$$_ChangePasswordLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangePasswordLoadingStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res,
        _$_ChangePasswordLoadingState>
    implements _$$_ChangePasswordLoadingStateCopyWith<$Res> {
  __$$_ChangePasswordLoadingStateCopyWithImpl(
      _$_ChangePasswordLoadingState _value,
      $Res Function(_$_ChangePasswordLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangePasswordLoadingState implements _ChangePasswordLoadingState {
  const _$_ChangePasswordLoadingState();

  @override
  String toString() {
    return 'ChangePasswordState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(BaseResponse response) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(BaseResponse response)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(BaseResponse response)? success,
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
    required TResult Function(_ChangePasswordStateFailed value) failed,
    required TResult Function(_ChangePasswordLoadingState value) loading,
    required TResult Function(_ChangePasswordStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePasswordStateFailed value)? failed,
    TResult? Function(_ChangePasswordLoadingState value)? loading,
    TResult? Function(_ChangePasswordStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordStateFailed value)? failed,
    TResult Function(_ChangePasswordLoadingState value)? loading,
    TResult Function(_ChangePasswordStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordLoadingState implements ChangePasswordState {
  const factory _ChangePasswordLoadingState() = _$_ChangePasswordLoadingState;
}

/// @nodoc
abstract class _$$_ChangePasswordStateSuccessCopyWith<$Res> {
  factory _$$_ChangePasswordStateSuccessCopyWith(
          _$_ChangePasswordStateSuccess value,
          $Res Function(_$_ChangePasswordStateSuccess) then) =
      __$$_ChangePasswordStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResponse response});
}

/// @nodoc
class __$$_ChangePasswordStateSuccessCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res,
        _$_ChangePasswordStateSuccess>
    implements _$$_ChangePasswordStateSuccessCopyWith<$Res> {
  __$$_ChangePasswordStateSuccessCopyWithImpl(
      _$_ChangePasswordStateSuccess _value,
      $Res Function(_$_ChangePasswordStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_ChangePasswordStateSuccess(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordStateSuccess implements _ChangePasswordStateSuccess {
  const _$_ChangePasswordStateSuccess({required this.response});

  @override
  final BaseResponse response;

  @override
  String toString() {
    return 'ChangePasswordState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordStateSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordStateSuccessCopyWith<_$_ChangePasswordStateSuccess>
      get copyWith => __$$_ChangePasswordStateSuccessCopyWithImpl<
          _$_ChangePasswordStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(BaseResponse response) success,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(BaseResponse response)? success,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(BaseResponse response)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordStateFailed value) failed,
    required TResult Function(_ChangePasswordLoadingState value) loading,
    required TResult Function(_ChangePasswordStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePasswordStateFailed value)? failed,
    TResult? Function(_ChangePasswordLoadingState value)? loading,
    TResult? Function(_ChangePasswordStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordStateFailed value)? failed,
    TResult Function(_ChangePasswordLoadingState value)? loading,
    TResult Function(_ChangePasswordStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordStateSuccess implements ChangePasswordState {
  const factory _ChangePasswordStateSuccess(
      {required final BaseResponse response}) = _$_ChangePasswordStateSuccess;

  BaseResponse get response;
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateSuccessCopyWith<_$_ChangePasswordStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
