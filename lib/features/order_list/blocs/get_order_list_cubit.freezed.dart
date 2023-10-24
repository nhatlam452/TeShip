// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetOrderListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderListResponse orders) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderListResponse orders)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderListResponse orders)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderListStateFailed value) failed,
    required TResult Function(_GetOrderListStateInitial value) initial,
    required TResult Function(_GetOrderListStateSuccess value) success,
    required TResult Function(_GetOrderListStateRefresh value) refresh,
    required TResult Function(_GetOrderListStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderListStateFailed value)? failed,
    TResult? Function(_GetOrderListStateInitial value)? initial,
    TResult? Function(_GetOrderListStateSuccess value)? success,
    TResult? Function(_GetOrderListStateRefresh value)? refresh,
    TResult? Function(_GetOrderListStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderListStateFailed value)? failed,
    TResult Function(_GetOrderListStateInitial value)? initial,
    TResult Function(_GetOrderListStateSuccess value)? success,
    TResult Function(_GetOrderListStateRefresh value)? refresh,
    TResult Function(_GetOrderListStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderListStateCopyWith<$Res> {
  factory $GetOrderListStateCopyWith(
          GetOrderListState value, $Res Function(GetOrderListState) then) =
      _$GetOrderListStateCopyWithImpl<$Res, GetOrderListState>;
}

/// @nodoc
class _$GetOrderListStateCopyWithImpl<$Res, $Val extends GetOrderListState>
    implements $GetOrderListStateCopyWith<$Res> {
  _$GetOrderListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetOrderListStateFailedCopyWith<$Res> {
  factory _$$_GetOrderListStateFailedCopyWith(_$_GetOrderListStateFailed value,
          $Res Function(_$_GetOrderListStateFailed) then) =
      __$$_GetOrderListStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});

  $AlertModelCopyWith<$Res> get alert;
}

/// @nodoc
class __$$_GetOrderListStateFailedCopyWithImpl<$Res>
    extends _$GetOrderListStateCopyWithImpl<$Res, _$_GetOrderListStateFailed>
    implements _$$_GetOrderListStateFailedCopyWith<$Res> {
  __$$_GetOrderListStateFailedCopyWithImpl(_$_GetOrderListStateFailed _value,
      $Res Function(_$_GetOrderListStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
  }) {
    return _then(_$_GetOrderListStateFailed(
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

class _$_GetOrderListStateFailed implements _GetOrderListStateFailed {
  const _$_GetOrderListStateFailed({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'GetOrderListState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderListStateFailed &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrderListStateFailedCopyWith<_$_GetOrderListStateFailed>
      get copyWith =>
          __$$_GetOrderListStateFailedCopyWithImpl<_$_GetOrderListStateFailed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderListResponse orders) success,
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
    TResult? Function(OrderListResponse orders)? success,
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
    TResult Function(OrderListResponse orders)? success,
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
    required TResult Function(_GetOrderListStateFailed value) failed,
    required TResult Function(_GetOrderListStateInitial value) initial,
    required TResult Function(_GetOrderListStateSuccess value) success,
    required TResult Function(_GetOrderListStateRefresh value) refresh,
    required TResult Function(_GetOrderListStateLoading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderListStateFailed value)? failed,
    TResult? Function(_GetOrderListStateInitial value)? initial,
    TResult? Function(_GetOrderListStateSuccess value)? success,
    TResult? Function(_GetOrderListStateRefresh value)? refresh,
    TResult? Function(_GetOrderListStateLoading value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderListStateFailed value)? failed,
    TResult Function(_GetOrderListStateInitial value)? initial,
    TResult Function(_GetOrderListStateSuccess value)? success,
    TResult Function(_GetOrderListStateRefresh value)? refresh,
    TResult Function(_GetOrderListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetOrderListStateFailed implements GetOrderListState {
  const factory _GetOrderListStateFailed({required final AlertModel alert}) =
      _$_GetOrderListStateFailed;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_GetOrderListStateFailedCopyWith<_$_GetOrderListStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetOrderListStateInitialCopyWith<$Res> {
  factory _$$_GetOrderListStateInitialCopyWith(
          _$_GetOrderListStateInitial value,
          $Res Function(_$_GetOrderListStateInitial) then) =
      __$$_GetOrderListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrderListStateInitialCopyWithImpl<$Res>
    extends _$GetOrderListStateCopyWithImpl<$Res, _$_GetOrderListStateInitial>
    implements _$$_GetOrderListStateInitialCopyWith<$Res> {
  __$$_GetOrderListStateInitialCopyWithImpl(_$_GetOrderListStateInitial _value,
      $Res Function(_$_GetOrderListStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrderListStateInitial implements _GetOrderListStateInitial {
  const _$_GetOrderListStateInitial();

  @override
  String toString() {
    return 'GetOrderListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderListResponse orders) success,
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
    TResult? Function(OrderListResponse orders)? success,
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
    TResult Function(OrderListResponse orders)? success,
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
    required TResult Function(_GetOrderListStateFailed value) failed,
    required TResult Function(_GetOrderListStateInitial value) initial,
    required TResult Function(_GetOrderListStateSuccess value) success,
    required TResult Function(_GetOrderListStateRefresh value) refresh,
    required TResult Function(_GetOrderListStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderListStateFailed value)? failed,
    TResult? Function(_GetOrderListStateInitial value)? initial,
    TResult? Function(_GetOrderListStateSuccess value)? success,
    TResult? Function(_GetOrderListStateRefresh value)? refresh,
    TResult? Function(_GetOrderListStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderListStateFailed value)? failed,
    TResult Function(_GetOrderListStateInitial value)? initial,
    TResult Function(_GetOrderListStateSuccess value)? success,
    TResult Function(_GetOrderListStateRefresh value)? refresh,
    TResult Function(_GetOrderListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetOrderListStateInitial implements GetOrderListState {
  const factory _GetOrderListStateInitial() = _$_GetOrderListStateInitial;
}

/// @nodoc
abstract class _$$_GetOrderListStateSuccessCopyWith<$Res> {
  factory _$$_GetOrderListStateSuccessCopyWith(
          _$_GetOrderListStateSuccess value,
          $Res Function(_$_GetOrderListStateSuccess) then) =
      __$$_GetOrderListStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderListResponse orders});
}

/// @nodoc
class __$$_GetOrderListStateSuccessCopyWithImpl<$Res>
    extends _$GetOrderListStateCopyWithImpl<$Res, _$_GetOrderListStateSuccess>
    implements _$$_GetOrderListStateSuccessCopyWith<$Res> {
  __$$_GetOrderListStateSuccessCopyWithImpl(_$_GetOrderListStateSuccess _value,
      $Res Function(_$_GetOrderListStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$_GetOrderListStateSuccess(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as OrderListResponse,
    ));
  }
}

/// @nodoc

class _$_GetOrderListStateSuccess implements _GetOrderListStateSuccess {
  const _$_GetOrderListStateSuccess({required this.orders});

  @override
  final OrderListResponse orders;

  @override
  String toString() {
    return 'GetOrderListState.success(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderListStateSuccess &&
            (identical(other.orders, orders) || other.orders == orders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrderListStateSuccessCopyWith<_$_GetOrderListStateSuccess>
      get copyWith => __$$_GetOrderListStateSuccessCopyWithImpl<
          _$_GetOrderListStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderListResponse orders) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return success(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(OrderListResponse orders)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return success?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(OrderListResponse orders)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderListStateFailed value) failed,
    required TResult Function(_GetOrderListStateInitial value) initial,
    required TResult Function(_GetOrderListStateSuccess value) success,
    required TResult Function(_GetOrderListStateRefresh value) refresh,
    required TResult Function(_GetOrderListStateLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderListStateFailed value)? failed,
    TResult? Function(_GetOrderListStateInitial value)? initial,
    TResult? Function(_GetOrderListStateSuccess value)? success,
    TResult? Function(_GetOrderListStateRefresh value)? refresh,
    TResult? Function(_GetOrderListStateLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderListStateFailed value)? failed,
    TResult Function(_GetOrderListStateInitial value)? initial,
    TResult Function(_GetOrderListStateSuccess value)? success,
    TResult Function(_GetOrderListStateRefresh value)? refresh,
    TResult Function(_GetOrderListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetOrderListStateSuccess implements GetOrderListState {
  const factory _GetOrderListStateSuccess(
      {required final OrderListResponse orders}) = _$_GetOrderListStateSuccess;

  OrderListResponse get orders;
  @JsonKey(ignore: true)
  _$$_GetOrderListStateSuccessCopyWith<_$_GetOrderListStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetOrderListStateRefreshCopyWith<$Res> {
  factory _$$_GetOrderListStateRefreshCopyWith(
          _$_GetOrderListStateRefresh value,
          $Res Function(_$_GetOrderListStateRefresh) then) =
      __$$_GetOrderListStateRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrderListStateRefreshCopyWithImpl<$Res>
    extends _$GetOrderListStateCopyWithImpl<$Res, _$_GetOrderListStateRefresh>
    implements _$$_GetOrderListStateRefreshCopyWith<$Res> {
  __$$_GetOrderListStateRefreshCopyWithImpl(_$_GetOrderListStateRefresh _value,
      $Res Function(_$_GetOrderListStateRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrderListStateRefresh implements _GetOrderListStateRefresh {
  const _$_GetOrderListStateRefresh();

  @override
  String toString() {
    return 'GetOrderListState.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderListStateRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderListResponse orders) success,
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
    TResult? Function(OrderListResponse orders)? success,
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
    TResult Function(OrderListResponse orders)? success,
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
    required TResult Function(_GetOrderListStateFailed value) failed,
    required TResult Function(_GetOrderListStateInitial value) initial,
    required TResult Function(_GetOrderListStateSuccess value) success,
    required TResult Function(_GetOrderListStateRefresh value) refresh,
    required TResult Function(_GetOrderListStateLoading value) loading,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderListStateFailed value)? failed,
    TResult? Function(_GetOrderListStateInitial value)? initial,
    TResult? Function(_GetOrderListStateSuccess value)? success,
    TResult? Function(_GetOrderListStateRefresh value)? refresh,
    TResult? Function(_GetOrderListStateLoading value)? loading,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderListStateFailed value)? failed,
    TResult Function(_GetOrderListStateInitial value)? initial,
    TResult Function(_GetOrderListStateSuccess value)? success,
    TResult Function(_GetOrderListStateRefresh value)? refresh,
    TResult Function(_GetOrderListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _GetOrderListStateRefresh implements GetOrderListState {
  const factory _GetOrderListStateRefresh() = _$_GetOrderListStateRefresh;
}

/// @nodoc
abstract class _$$_GetOrderListStateLoadingCopyWith<$Res> {
  factory _$$_GetOrderListStateLoadingCopyWith(
          _$_GetOrderListStateLoading value,
          $Res Function(_$_GetOrderListStateLoading) then) =
      __$$_GetOrderListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrderListStateLoadingCopyWithImpl<$Res>
    extends _$GetOrderListStateCopyWithImpl<$Res, _$_GetOrderListStateLoading>
    implements _$$_GetOrderListStateLoadingCopyWith<$Res> {
  __$$_GetOrderListStateLoadingCopyWithImpl(_$_GetOrderListStateLoading _value,
      $Res Function(_$_GetOrderListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrderListStateLoading implements _GetOrderListStateLoading {
  const _$_GetOrderListStateLoading();

  @override
  String toString() {
    return 'GetOrderListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(OrderListResponse orders) success,
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
    TResult? Function(OrderListResponse orders)? success,
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
    TResult Function(OrderListResponse orders)? success,
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
    required TResult Function(_GetOrderListStateFailed value) failed,
    required TResult Function(_GetOrderListStateInitial value) initial,
    required TResult Function(_GetOrderListStateSuccess value) success,
    required TResult Function(_GetOrderListStateRefresh value) refresh,
    required TResult Function(_GetOrderListStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderListStateFailed value)? failed,
    TResult? Function(_GetOrderListStateInitial value)? initial,
    TResult? Function(_GetOrderListStateSuccess value)? success,
    TResult? Function(_GetOrderListStateRefresh value)? refresh,
    TResult? Function(_GetOrderListStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderListStateFailed value)? failed,
    TResult Function(_GetOrderListStateInitial value)? initial,
    TResult Function(_GetOrderListStateSuccess value)? success,
    TResult Function(_GetOrderListStateRefresh value)? refresh,
    TResult Function(_GetOrderListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetOrderListStateLoading implements GetOrderListState {
  const factory _GetOrderListStateLoading() = _$_GetOrderListStateLoading;
}
