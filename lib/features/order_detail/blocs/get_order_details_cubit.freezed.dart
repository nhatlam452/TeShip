// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetOrderDetailsShopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderDetailsShopStateCopyWith<$Res> {
  factory $GetOrderDetailsShopStateCopyWith(GetOrderDetailsShopState value,
          $Res Function(GetOrderDetailsShopState) then) =
      _$GetOrderDetailsShopStateCopyWithImpl<$Res, GetOrderDetailsShopState>;
}

/// @nodoc
class _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        $Val extends GetOrderDetailsShopState>
    implements $GetOrderDetailsShopStateCopyWith<$Res> {
  _$GetOrderDetailsShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetOrderDetailsShopStateFailedCopyWith<$Res> {
  factory _$$_GetOrderDetailsShopStateFailedCopyWith(
          _$_GetOrderDetailsShopStateFailed value,
          $Res Function(_$_GetOrderDetailsShopStateFailed) then) =
      __$$_GetOrderDetailsShopStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});

  $AlertModelCopyWith<$Res> get alert;
}

/// @nodoc
class __$$_GetOrderDetailsShopStateFailedCopyWithImpl<$Res>
    extends _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        _$_GetOrderDetailsShopStateFailed>
    implements _$$_GetOrderDetailsShopStateFailedCopyWith<$Res> {
  __$$_GetOrderDetailsShopStateFailedCopyWithImpl(
      _$_GetOrderDetailsShopStateFailed _value,
      $Res Function(_$_GetOrderDetailsShopStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
  }) {
    return _then(_$_GetOrderDetailsShopStateFailed(
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

class _$_GetOrderDetailsShopStateFailed
    implements _GetOrderDetailsShopStateFailed {
  const _$_GetOrderDetailsShopStateFailed({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'GetOrderDetailsShopState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderDetailsShopStateFailed &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrderDetailsShopStateFailedCopyWith<_$_GetOrderDetailsShopStateFailed>
      get copyWith => __$$_GetOrderDetailsShopStateFailedCopyWithImpl<
          _$_GetOrderDetailsShopStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return failed(alert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return failed?.call(alert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
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
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailsShopStateFailed
    implements GetOrderDetailsShopState {
  const factory _GetOrderDetailsShopStateFailed(
      {required final AlertModel alert}) = _$_GetOrderDetailsShopStateFailed;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_GetOrderDetailsShopStateFailedCopyWith<_$_GetOrderDetailsShopStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetOrderDetailsShopStateInitialCopyWith<$Res> {
  factory _$$_GetOrderDetailsShopStateInitialCopyWith(
          _$_GetOrderDetailsShopStateInitial value,
          $Res Function(_$_GetOrderDetailsShopStateInitial) then) =
      __$$_GetOrderDetailsShopStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrderDetailsShopStateInitialCopyWithImpl<$Res>
    extends _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        _$_GetOrderDetailsShopStateInitial>
    implements _$$_GetOrderDetailsShopStateInitialCopyWith<$Res> {
  __$$_GetOrderDetailsShopStateInitialCopyWithImpl(
      _$_GetOrderDetailsShopStateInitial _value,
      $Res Function(_$_GetOrderDetailsShopStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrderDetailsShopStateInitial
    implements _GetOrderDetailsShopStateInitial {
  const _$_GetOrderDetailsShopStateInitial();

  @override
  String toString() {
    return 'GetOrderDetailsShopState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderDetailsShopStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
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
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailsShopStateInitial
    implements GetOrderDetailsShopState {
  const factory _GetOrderDetailsShopStateInitial() =
      _$_GetOrderDetailsShopStateInitial;
}

/// @nodoc
abstract class _$$_GetOrderDetailsShopStateSuccessCopyWith<$Res> {
  factory _$$_GetOrderDetailsShopStateSuccessCopyWith(
          _$_GetOrderDetailsShopStateSuccess value,
          $Res Function(_$_GetOrderDetailsShopStateSuccess) then) =
      __$$_GetOrderDetailsShopStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderDetailsDataResponse data});
}

/// @nodoc
class __$$_GetOrderDetailsShopStateSuccessCopyWithImpl<$Res>
    extends _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        _$_GetOrderDetailsShopStateSuccess>
    implements _$$_GetOrderDetailsShopStateSuccessCopyWith<$Res> {
  __$$_GetOrderDetailsShopStateSuccessCopyWithImpl(
      _$_GetOrderDetailsShopStateSuccess _value,
      $Res Function(_$_GetOrderDetailsShopStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetOrderDetailsShopStateSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderDetailsDataResponse,
    ));
  }
}

/// @nodoc

class _$_GetOrderDetailsShopStateSuccess
    implements _GetOrderDetailsShopStateSuccess {
  const _$_GetOrderDetailsShopStateSuccess({required this.data});

  @override
  final OrderDetailsDataResponse data;

  @override
  String toString() {
    return 'GetOrderDetailsShopState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderDetailsShopStateSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrderDetailsShopStateSuccessCopyWith<
          _$_GetOrderDetailsShopStateSuccess>
      get copyWith => __$$_GetOrderDetailsShopStateSuccessCopyWithImpl<
          _$_GetOrderDetailsShopStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailsShopStateSuccess
    implements GetOrderDetailsShopState {
  const factory _GetOrderDetailsShopStateSuccess(
          {required final OrderDetailsDataResponse data}) =
      _$_GetOrderDetailsShopStateSuccess;

  OrderDetailsDataResponse get data;
  @JsonKey(ignore: true)
  _$$_GetOrderDetailsShopStateSuccessCopyWith<
          _$_GetOrderDetailsShopStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWith<$Res> {
  factory _$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWith(
          _$_GetOrderDetailsShopUpdateStateFailSuccess value,
          $Res Function(_$_GetOrderDetailsShopUpdateStateFailSuccess) then) =
      __$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResponse response});
}

/// @nodoc
class __$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWithImpl<$Res>
    extends _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        _$_GetOrderDetailsShopUpdateStateFailSuccess>
    implements _$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWith<$Res> {
  __$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWithImpl(
      _$_GetOrderDetailsShopUpdateStateFailSuccess _value,
      $Res Function(_$_GetOrderDetailsShopUpdateStateFailSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_GetOrderDetailsShopUpdateStateFailSuccess(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse,
    ));
  }
}

/// @nodoc

class _$_GetOrderDetailsShopUpdateStateFailSuccess
    implements _GetOrderDetailsShopUpdateStateFailSuccess {
  const _$_GetOrderDetailsShopUpdateStateFailSuccess({required this.response});

  @override
  final BaseResponse response;

  @override
  String toString() {
    return 'GetOrderDetailsShopState.updateFailSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderDetailsShopUpdateStateFailSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWith<
          _$_GetOrderDetailsShopUpdateStateFailSuccess>
      get copyWith =>
          __$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWithImpl<
              _$_GetOrderDetailsShopUpdateStateFailSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return updateFailSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return updateFailSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (updateFailSuccess != null) {
      return updateFailSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) {
    return updateFailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) {
    return updateFailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (updateFailSuccess != null) {
      return updateFailSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailsShopUpdateStateFailSuccess
    implements GetOrderDetailsShopState {
  const factory _GetOrderDetailsShopUpdateStateFailSuccess(
          {required final BaseResponse response}) =
      _$_GetOrderDetailsShopUpdateStateFailSuccess;

  BaseResponse get response;
  @JsonKey(ignore: true)
  _$$_GetOrderDetailsShopUpdateStateFailSuccessCopyWith<
          _$_GetOrderDetailsShopUpdateStateFailSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWith<
    $Res> {
  factory _$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWith(
          _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value,
          $Res Function(_$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess)
              then) =
      __$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResponse response});
}

/// @nodoc
class __$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWithImpl<$Res>
    extends _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess>
    implements
        _$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWith<$Res> {
  __$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWithImpl(
      _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess _value,
      $Res Function(_$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse,
    ));
  }
}

/// @nodoc

class _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess
    implements _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess {
  const _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess(
      {required this.response});

  @override
  final BaseResponse response;

  @override
  String toString() {
    return 'GetOrderDetailsShopState.updateStatusSHIPSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWith<
          _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess>
      get copyWith =>
          __$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWithImpl<
                  _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return updateStatusSHIPSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return updateStatusSHIPSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (updateStatusSHIPSuccess != null) {
      return updateStatusSHIPSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) {
    return updateStatusSHIPSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) {
    return updateStatusSHIPSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (updateStatusSHIPSuccess != null) {
      return updateStatusSHIPSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess
    implements GetOrderDetailsShopState {
  const factory _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess(
          {required final BaseResponse response}) =
      _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess;

  BaseResponse get response;
  @JsonKey(ignore: true)
  _$$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccessCopyWith<
          _$_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetOrderDetailsShopStateRefreshCopyWith<$Res> {
  factory _$$_GetOrderDetailsShopStateRefreshCopyWith(
          _$_GetOrderDetailsShopStateRefresh value,
          $Res Function(_$_GetOrderDetailsShopStateRefresh) then) =
      __$$_GetOrderDetailsShopStateRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrderDetailsShopStateRefreshCopyWithImpl<$Res>
    extends _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        _$_GetOrderDetailsShopStateRefresh>
    implements _$$_GetOrderDetailsShopStateRefreshCopyWith<$Res> {
  __$$_GetOrderDetailsShopStateRefreshCopyWithImpl(
      _$_GetOrderDetailsShopStateRefresh _value,
      $Res Function(_$_GetOrderDetailsShopStateRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrderDetailsShopStateRefresh
    implements _GetOrderDetailsShopStateRefresh {
  const _$_GetOrderDetailsShopStateRefresh();

  @override
  String toString() {
    return 'GetOrderDetailsShopState.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderDetailsShopStateRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailsShopStateRefresh
    implements GetOrderDetailsShopState {
  const factory _GetOrderDetailsShopStateRefresh() =
      _$_GetOrderDetailsShopStateRefresh;
}

/// @nodoc
abstract class _$$_GetOrderDetailsShopStateLoadingCopyWith<$Res> {
  factory _$$_GetOrderDetailsShopStateLoadingCopyWith(
          _$_GetOrderDetailsShopStateLoading value,
          $Res Function(_$_GetOrderDetailsShopStateLoading) then) =
      __$$_GetOrderDetailsShopStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrderDetailsShopStateLoadingCopyWithImpl<$Res>
    extends _$GetOrderDetailsShopStateCopyWithImpl<$Res,
        _$_GetOrderDetailsShopStateLoading>
    implements _$$_GetOrderDetailsShopStateLoadingCopyWith<$Res> {
  __$$_GetOrderDetailsShopStateLoadingCopyWithImpl(
      _$_GetOrderDetailsShopStateLoading _value,
      $Res Function(_$_GetOrderDetailsShopStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrderDetailsShopStateLoading
    implements _GetOrderDetailsShopStateLoading {
  const _$_GetOrderDetailsShopStateLoading();

  @override
  String toString() {
    return 'GetOrderDetailsShopState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderDetailsShopStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderDetailsDataResponse data) success,
    required TResult Function(BaseResponse response) updateFailSuccess,
    required TResult Function(BaseResponse response) updateStatusSHIPSuccess,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderDetailsDataResponse data)? success,
    TResult? Function(BaseResponse response)? updateFailSuccess,
    TResult? Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderDetailsDataResponse data)? success,
    TResult Function(BaseResponse response)? updateFailSuccess,
    TResult Function(BaseResponse response)? updateStatusSHIPSuccess,
    TResult Function()? refresh,
    TResult Function()? loading,
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
    required TResult Function(_GetOrderDetailsShopStateFailed value) failed,
    required TResult Function(_GetOrderDetailsShopStateInitial value) initial,
    required TResult Function(_GetOrderDetailsShopStateSuccess value) success,
    required TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)
        updateFailSuccess,
    required TResult Function(
            _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)
        updateStatusSHIPSuccess,
    required TResult Function(_GetOrderDetailsShopStateRefresh value) refresh,
    required TResult Function(_GetOrderDetailsShopStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult? Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult? Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult? Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult? Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult? Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult? Function(_GetOrderDetailsShopStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailsShopStateFailed value)? failed,
    TResult Function(_GetOrderDetailsShopStateInitial value)? initial,
    TResult Function(_GetOrderDetailsShopStateSuccess value)? success,
    TResult Function(_GetOrderDetailsShopUpdateStateFailSuccess value)?
        updateFailSuccess,
    TResult Function(_GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess value)?
        updateStatusSHIPSuccess,
    TResult Function(_GetOrderDetailsShopStateRefresh value)? refresh,
    TResult Function(_GetOrderDetailsShopStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailsShopStateLoading
    implements GetOrderDetailsShopState {
  const factory _GetOrderDetailsShopStateLoading() =
      _$_GetOrderDetailsShopStateLoading;
}
