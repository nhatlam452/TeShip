// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoreListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(StoreListResponse response) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(StoreListResponse response)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(StoreListResponse response)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreListStateFailed value) failed,
    required TResult Function(_StoreListStateInitial value) initial,
    required TResult Function(_StoreListStateSuccess value) success,
    required TResult Function(_StoreListStateRefresh value) refresh,
    required TResult Function(_StoreListStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreListStateFailed value)? failed,
    TResult? Function(_StoreListStateInitial value)? initial,
    TResult? Function(_StoreListStateSuccess value)? success,
    TResult? Function(_StoreListStateRefresh value)? refresh,
    TResult? Function(_StoreListStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreListStateFailed value)? failed,
    TResult Function(_StoreListStateInitial value)? initial,
    TResult Function(_StoreListStateSuccess value)? success,
    TResult Function(_StoreListStateRefresh value)? refresh,
    TResult Function(_StoreListStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreListStateCopyWith<$Res> {
  factory $StoreListStateCopyWith(
          StoreListState value, $Res Function(StoreListState) then) =
      _$StoreListStateCopyWithImpl<$Res, StoreListState>;
}

/// @nodoc
class _$StoreListStateCopyWithImpl<$Res, $Val extends StoreListState>
    implements $StoreListStateCopyWith<$Res> {
  _$StoreListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StoreListStateFailedCopyWith<$Res> {
  factory _$$_StoreListStateFailedCopyWith(_$_StoreListStateFailed value,
          $Res Function(_$_StoreListStateFailed) then) =
      __$$_StoreListStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});

  $AlertModelCopyWith<$Res> get alert;
}

/// @nodoc
class __$$_StoreListStateFailedCopyWithImpl<$Res>
    extends _$StoreListStateCopyWithImpl<$Res, _$_StoreListStateFailed>
    implements _$$_StoreListStateFailedCopyWith<$Res> {
  __$$_StoreListStateFailedCopyWithImpl(_$_StoreListStateFailed _value,
      $Res Function(_$_StoreListStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
  }) {
    return _then(_$_StoreListStateFailed(
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

class _$_StoreListStateFailed implements _StoreListStateFailed {
  const _$_StoreListStateFailed({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'StoreListState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreListStateFailed &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreListStateFailedCopyWith<_$_StoreListStateFailed> get copyWith =>
      __$$_StoreListStateFailedCopyWithImpl<_$_StoreListStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(StoreListResponse response) success,
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
    TResult? Function(StoreListResponse response)? success,
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
    TResult Function(StoreListResponse response)? success,
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
    required TResult Function(_StoreListStateFailed value) failed,
    required TResult Function(_StoreListStateInitial value) initial,
    required TResult Function(_StoreListStateSuccess value) success,
    required TResult Function(_StoreListStateRefresh value) refresh,
    required TResult Function(_StoreListStateLoading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreListStateFailed value)? failed,
    TResult? Function(_StoreListStateInitial value)? initial,
    TResult? Function(_StoreListStateSuccess value)? success,
    TResult? Function(_StoreListStateRefresh value)? refresh,
    TResult? Function(_StoreListStateLoading value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreListStateFailed value)? failed,
    TResult Function(_StoreListStateInitial value)? initial,
    TResult Function(_StoreListStateSuccess value)? success,
    TResult Function(_StoreListStateRefresh value)? refresh,
    TResult Function(_StoreListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _StoreListStateFailed implements StoreListState {
  const factory _StoreListStateFailed({required final AlertModel alert}) =
      _$_StoreListStateFailed;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_StoreListStateFailedCopyWith<_$_StoreListStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoreListStateInitialCopyWith<$Res> {
  factory _$$_StoreListStateInitialCopyWith(_$_StoreListStateInitial value,
          $Res Function(_$_StoreListStateInitial) then) =
      __$$_StoreListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoreListStateInitialCopyWithImpl<$Res>
    extends _$StoreListStateCopyWithImpl<$Res, _$_StoreListStateInitial>
    implements _$$_StoreListStateInitialCopyWith<$Res> {
  __$$_StoreListStateInitialCopyWithImpl(_$_StoreListStateInitial _value,
      $Res Function(_$_StoreListStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoreListStateInitial implements _StoreListStateInitial {
  const _$_StoreListStateInitial();

  @override
  String toString() {
    return 'StoreListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StoreListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(StoreListResponse response) success,
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
    TResult? Function(StoreListResponse response)? success,
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
    TResult Function(StoreListResponse response)? success,
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
    required TResult Function(_StoreListStateFailed value) failed,
    required TResult Function(_StoreListStateInitial value) initial,
    required TResult Function(_StoreListStateSuccess value) success,
    required TResult Function(_StoreListStateRefresh value) refresh,
    required TResult Function(_StoreListStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreListStateFailed value)? failed,
    TResult? Function(_StoreListStateInitial value)? initial,
    TResult? Function(_StoreListStateSuccess value)? success,
    TResult? Function(_StoreListStateRefresh value)? refresh,
    TResult? Function(_StoreListStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreListStateFailed value)? failed,
    TResult Function(_StoreListStateInitial value)? initial,
    TResult Function(_StoreListStateSuccess value)? success,
    TResult Function(_StoreListStateRefresh value)? refresh,
    TResult Function(_StoreListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StoreListStateInitial implements StoreListState {
  const factory _StoreListStateInitial() = _$_StoreListStateInitial;
}

/// @nodoc
abstract class _$$_StoreListStateSuccessCopyWith<$Res> {
  factory _$$_StoreListStateSuccessCopyWith(_$_StoreListStateSuccess value,
          $Res Function(_$_StoreListStateSuccess) then) =
      __$$_StoreListStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreListResponse response});
}

/// @nodoc
class __$$_StoreListStateSuccessCopyWithImpl<$Res>
    extends _$StoreListStateCopyWithImpl<$Res, _$_StoreListStateSuccess>
    implements _$$_StoreListStateSuccessCopyWith<$Res> {
  __$$_StoreListStateSuccessCopyWithImpl(_$_StoreListStateSuccess _value,
      $Res Function(_$_StoreListStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_StoreListStateSuccess(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StoreListResponse,
    ));
  }
}

/// @nodoc

class _$_StoreListStateSuccess implements _StoreListStateSuccess {
  const _$_StoreListStateSuccess({required this.response});

  @override
  final StoreListResponse response;

  @override
  String toString() {
    return 'StoreListState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreListStateSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreListStateSuccessCopyWith<_$_StoreListStateSuccess> get copyWith =>
      __$$_StoreListStateSuccessCopyWithImpl<_$_StoreListStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(StoreListResponse response) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(StoreListResponse response)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(StoreListResponse response)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
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
    required TResult Function(_StoreListStateFailed value) failed,
    required TResult Function(_StoreListStateInitial value) initial,
    required TResult Function(_StoreListStateSuccess value) success,
    required TResult Function(_StoreListStateRefresh value) refresh,
    required TResult Function(_StoreListStateLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreListStateFailed value)? failed,
    TResult? Function(_StoreListStateInitial value)? initial,
    TResult? Function(_StoreListStateSuccess value)? success,
    TResult? Function(_StoreListStateRefresh value)? refresh,
    TResult? Function(_StoreListStateLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreListStateFailed value)? failed,
    TResult Function(_StoreListStateInitial value)? initial,
    TResult Function(_StoreListStateSuccess value)? success,
    TResult Function(_StoreListStateRefresh value)? refresh,
    TResult Function(_StoreListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StoreListStateSuccess implements StoreListState {
  const factory _StoreListStateSuccess(
      {required final StoreListResponse response}) = _$_StoreListStateSuccess;

  StoreListResponse get response;
  @JsonKey(ignore: true)
  _$$_StoreListStateSuccessCopyWith<_$_StoreListStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoreListStateRefreshCopyWith<$Res> {
  factory _$$_StoreListStateRefreshCopyWith(_$_StoreListStateRefresh value,
          $Res Function(_$_StoreListStateRefresh) then) =
      __$$_StoreListStateRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoreListStateRefreshCopyWithImpl<$Res>
    extends _$StoreListStateCopyWithImpl<$Res, _$_StoreListStateRefresh>
    implements _$$_StoreListStateRefreshCopyWith<$Res> {
  __$$_StoreListStateRefreshCopyWithImpl(_$_StoreListStateRefresh _value,
      $Res Function(_$_StoreListStateRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoreListStateRefresh implements _StoreListStateRefresh {
  const _$_StoreListStateRefresh();

  @override
  String toString() {
    return 'StoreListState.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StoreListStateRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(StoreListResponse response) success,
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
    TResult? Function(StoreListResponse response)? success,
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
    TResult Function(StoreListResponse response)? success,
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
    required TResult Function(_StoreListStateFailed value) failed,
    required TResult Function(_StoreListStateInitial value) initial,
    required TResult Function(_StoreListStateSuccess value) success,
    required TResult Function(_StoreListStateRefresh value) refresh,
    required TResult Function(_StoreListStateLoading value) loading,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreListStateFailed value)? failed,
    TResult? Function(_StoreListStateInitial value)? initial,
    TResult? Function(_StoreListStateSuccess value)? success,
    TResult? Function(_StoreListStateRefresh value)? refresh,
    TResult? Function(_StoreListStateLoading value)? loading,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreListStateFailed value)? failed,
    TResult Function(_StoreListStateInitial value)? initial,
    TResult Function(_StoreListStateSuccess value)? success,
    TResult Function(_StoreListStateRefresh value)? refresh,
    TResult Function(_StoreListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _StoreListStateRefresh implements StoreListState {
  const factory _StoreListStateRefresh() = _$_StoreListStateRefresh;
}

/// @nodoc
abstract class _$$_StoreListStateLoadingCopyWith<$Res> {
  factory _$$_StoreListStateLoadingCopyWith(_$_StoreListStateLoading value,
          $Res Function(_$_StoreListStateLoading) then) =
      __$$_StoreListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoreListStateLoadingCopyWithImpl<$Res>
    extends _$StoreListStateCopyWithImpl<$Res, _$_StoreListStateLoading>
    implements _$$_StoreListStateLoadingCopyWith<$Res> {
  __$$_StoreListStateLoadingCopyWithImpl(_$_StoreListStateLoading _value,
      $Res Function(_$_StoreListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoreListStateLoading implements _StoreListStateLoading {
  const _$_StoreListStateLoading();

  @override
  String toString() {
    return 'StoreListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StoreListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(StoreListResponse response) success,
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
    TResult? Function(StoreListResponse response)? success,
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
    TResult Function(StoreListResponse response)? success,
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
    required TResult Function(_StoreListStateFailed value) failed,
    required TResult Function(_StoreListStateInitial value) initial,
    required TResult Function(_StoreListStateSuccess value) success,
    required TResult Function(_StoreListStateRefresh value) refresh,
    required TResult Function(_StoreListStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreListStateFailed value)? failed,
    TResult? Function(_StoreListStateInitial value)? initial,
    TResult? Function(_StoreListStateSuccess value)? success,
    TResult? Function(_StoreListStateRefresh value)? refresh,
    TResult? Function(_StoreListStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoreListStateFailed value)? failed,
    TResult Function(_StoreListStateInitial value)? initial,
    TResult Function(_StoreListStateSuccess value)? success,
    TResult Function(_StoreListStateRefresh value)? refresh,
    TResult Function(_StoreListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StoreListStateLoading implements StoreListState {
  const factory _StoreListStateLoading() = _$_StoreListStateLoading;
}
