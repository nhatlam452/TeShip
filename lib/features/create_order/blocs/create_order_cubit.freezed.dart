// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateOrderState {
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
    required TResult Function(_CreateOrderStateFailed value) failed,
    required TResult Function(_CreateOrderLoadingState value) loading,
    required TResult Function(_CreateOrderStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrderStateFailed value)? failed,
    TResult? Function(_CreateOrderLoadingState value)? loading,
    TResult? Function(_CreateOrderStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrderStateFailed value)? failed,
    TResult Function(_CreateOrderLoadingState value)? loading,
    TResult Function(_CreateOrderStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderStateCopyWith<$Res> {
  factory $CreateOrderStateCopyWith(
          CreateOrderState value, $Res Function(CreateOrderState) then) =
      _$CreateOrderStateCopyWithImpl<$Res, CreateOrderState>;
}

/// @nodoc
class _$CreateOrderStateCopyWithImpl<$Res, $Val extends CreateOrderState>
    implements $CreateOrderStateCopyWith<$Res> {
  _$CreateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateOrderStateFailedCopyWith<$Res> {
  factory _$$_CreateOrderStateFailedCopyWith(_$_CreateOrderStateFailed value,
          $Res Function(_$_CreateOrderStateFailed) then) =
      __$$_CreateOrderStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});

  $AlertModelCopyWith<$Res> get alert;
}

/// @nodoc
class __$$_CreateOrderStateFailedCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$_CreateOrderStateFailed>
    implements _$$_CreateOrderStateFailedCopyWith<$Res> {
  __$$_CreateOrderStateFailedCopyWithImpl(_$_CreateOrderStateFailed _value,
      $Res Function(_$_CreateOrderStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
  }) {
    return _then(_$_CreateOrderStateFailed(
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

class _$_CreateOrderStateFailed implements _CreateOrderStateFailed {
  const _$_CreateOrderStateFailed({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'CreateOrderState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderStateFailed &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderStateFailedCopyWith<_$_CreateOrderStateFailed> get copyWith =>
      __$$_CreateOrderStateFailedCopyWithImpl<_$_CreateOrderStateFailed>(
          this, _$identity);

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
    required TResult Function(_CreateOrderStateFailed value) failed,
    required TResult Function(_CreateOrderLoadingState value) loading,
    required TResult Function(_CreateOrderStateSuccess value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrderStateFailed value)? failed,
    TResult? Function(_CreateOrderLoadingState value)? loading,
    TResult? Function(_CreateOrderStateSuccess value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrderStateFailed value)? failed,
    TResult Function(_CreateOrderLoadingState value)? loading,
    TResult Function(_CreateOrderStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CreateOrderStateFailed implements CreateOrderState {
  const factory _CreateOrderStateFailed({required final AlertModel alert}) =
      _$_CreateOrderStateFailed;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_CreateOrderStateFailedCopyWith<_$_CreateOrderStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateOrderLoadingStateCopyWith<$Res> {
  factory _$$_CreateOrderLoadingStateCopyWith(_$_CreateOrderLoadingState value,
          $Res Function(_$_CreateOrderLoadingState) then) =
      __$$_CreateOrderLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateOrderLoadingStateCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$_CreateOrderLoadingState>
    implements _$$_CreateOrderLoadingStateCopyWith<$Res> {
  __$$_CreateOrderLoadingStateCopyWithImpl(_$_CreateOrderLoadingState _value,
      $Res Function(_$_CreateOrderLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateOrderLoadingState implements _CreateOrderLoadingState {
  const _$_CreateOrderLoadingState();

  @override
  String toString() {
    return 'CreateOrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderLoadingState);
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
    required TResult Function(_CreateOrderStateFailed value) failed,
    required TResult Function(_CreateOrderLoadingState value) loading,
    required TResult Function(_CreateOrderStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrderStateFailed value)? failed,
    TResult? Function(_CreateOrderLoadingState value)? loading,
    TResult? Function(_CreateOrderStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrderStateFailed value)? failed,
    TResult Function(_CreateOrderLoadingState value)? loading,
    TResult Function(_CreateOrderStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CreateOrderLoadingState implements CreateOrderState {
  const factory _CreateOrderLoadingState() = _$_CreateOrderLoadingState;
}

/// @nodoc
abstract class _$$_CreateOrderStateSuccessCopyWith<$Res> {
  factory _$$_CreateOrderStateSuccessCopyWith(_$_CreateOrderStateSuccess value,
          $Res Function(_$_CreateOrderStateSuccess) then) =
      __$$_CreateOrderStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResponse response});
}

/// @nodoc
class __$$_CreateOrderStateSuccessCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$_CreateOrderStateSuccess>
    implements _$$_CreateOrderStateSuccessCopyWith<$Res> {
  __$$_CreateOrderStateSuccessCopyWithImpl(_$_CreateOrderStateSuccess _value,
      $Res Function(_$_CreateOrderStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_CreateOrderStateSuccess(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse,
    ));
  }
}

/// @nodoc

class _$_CreateOrderStateSuccess implements _CreateOrderStateSuccess {
  const _$_CreateOrderStateSuccess({required this.response});

  @override
  final BaseResponse response;

  @override
  String toString() {
    return 'CreateOrderState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderStateSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderStateSuccessCopyWith<_$_CreateOrderStateSuccess>
      get copyWith =>
          __$$_CreateOrderStateSuccessCopyWithImpl<_$_CreateOrderStateSuccess>(
              this, _$identity);

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
    required TResult Function(_CreateOrderStateFailed value) failed,
    required TResult Function(_CreateOrderLoadingState value) loading,
    required TResult Function(_CreateOrderStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrderStateFailed value)? failed,
    TResult? Function(_CreateOrderLoadingState value)? loading,
    TResult? Function(_CreateOrderStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrderStateFailed value)? failed,
    TResult Function(_CreateOrderLoadingState value)? loading,
    TResult Function(_CreateOrderStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CreateOrderStateSuccess implements CreateOrderState {
  const factory _CreateOrderStateSuccess(
      {required final BaseResponse response}) = _$_CreateOrderStateSuccess;

  BaseResponse get response;
  @JsonKey(ignore: true)
  _$$_CreateOrderStateSuccessCopyWith<_$_CreateOrderStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
