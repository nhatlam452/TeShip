// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(ReportResponse response) success,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(ReportResponse response)? success,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(ReportResponse response)? success,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReportStateFailed value) failed,
    required TResult Function(_ReportLoadingState value) loading,
    required TResult Function(_ReportStateSuccess value) success,
    required TResult Function(_ReportStateRefresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReportStateFailed value)? failed,
    TResult? Function(_ReportLoadingState value)? loading,
    TResult? Function(_ReportStateSuccess value)? success,
    TResult? Function(_ReportStateRefresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportStateFailed value)? failed,
    TResult Function(_ReportLoadingState value)? loading,
    TResult Function(_ReportStateSuccess value)? success,
    TResult Function(_ReportStateRefresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res, ReportState>;
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReportStateFailedCopyWith<$Res> {
  factory _$$_ReportStateFailedCopyWith(_$_ReportStateFailed value,
          $Res Function(_$_ReportStateFailed) then) =
      __$$_ReportStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});

  $AlertModelCopyWith<$Res> get alert;
}

/// @nodoc
class __$$_ReportStateFailedCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$_ReportStateFailed>
    implements _$$_ReportStateFailedCopyWith<$Res> {
  __$$_ReportStateFailedCopyWithImpl(
      _$_ReportStateFailed _value, $Res Function(_$_ReportStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = null,
  }) {
    return _then(_$_ReportStateFailed(
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

class _$_ReportStateFailed implements _ReportStateFailed {
  const _$_ReportStateFailed({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'ReportState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportStateFailed &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportStateFailedCopyWith<_$_ReportStateFailed> get copyWith =>
      __$$_ReportStateFailedCopyWithImpl<_$_ReportStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(ReportResponse response) success,
    required TResult Function() refresh,
  }) {
    return failed(alert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(ReportResponse response)? success,
    TResult? Function()? refresh,
  }) {
    return failed?.call(alert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(ReportResponse response)? success,
    TResult Function()? refresh,
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
    required TResult Function(_ReportStateFailed value) failed,
    required TResult Function(_ReportLoadingState value) loading,
    required TResult Function(_ReportStateSuccess value) success,
    required TResult Function(_ReportStateRefresh value) refresh,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReportStateFailed value)? failed,
    TResult? Function(_ReportLoadingState value)? loading,
    TResult? Function(_ReportStateSuccess value)? success,
    TResult? Function(_ReportStateRefresh value)? refresh,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportStateFailed value)? failed,
    TResult Function(_ReportLoadingState value)? loading,
    TResult Function(_ReportStateSuccess value)? success,
    TResult Function(_ReportStateRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _ReportStateFailed implements ReportState {
  const factory _ReportStateFailed({required final AlertModel alert}) =
      _$_ReportStateFailed;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_ReportStateFailedCopyWith<_$_ReportStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportLoadingStateCopyWith<$Res> {
  factory _$$_ReportLoadingStateCopyWith(_$_ReportLoadingState value,
          $Res Function(_$_ReportLoadingState) then) =
      __$$_ReportLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReportLoadingStateCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$_ReportLoadingState>
    implements _$$_ReportLoadingStateCopyWith<$Res> {
  __$$_ReportLoadingStateCopyWithImpl(
      _$_ReportLoadingState _value, $Res Function(_$_ReportLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReportLoadingState implements _ReportLoadingState {
  const _$_ReportLoadingState();

  @override
  String toString() {
    return 'ReportState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReportLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(ReportResponse response) success,
    required TResult Function() refresh,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(ReportResponse response)? success,
    TResult? Function()? refresh,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(ReportResponse response)? success,
    TResult Function()? refresh,
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
    required TResult Function(_ReportStateFailed value) failed,
    required TResult Function(_ReportLoadingState value) loading,
    required TResult Function(_ReportStateSuccess value) success,
    required TResult Function(_ReportStateRefresh value) refresh,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReportStateFailed value)? failed,
    TResult? Function(_ReportLoadingState value)? loading,
    TResult? Function(_ReportStateSuccess value)? success,
    TResult? Function(_ReportStateRefresh value)? refresh,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportStateFailed value)? failed,
    TResult Function(_ReportLoadingState value)? loading,
    TResult Function(_ReportStateSuccess value)? success,
    TResult Function(_ReportStateRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReportLoadingState implements ReportState {
  const factory _ReportLoadingState() = _$_ReportLoadingState;
}

/// @nodoc
abstract class _$$_ReportStateSuccessCopyWith<$Res> {
  factory _$$_ReportStateSuccessCopyWith(_$_ReportStateSuccess value,
          $Res Function(_$_ReportStateSuccess) then) =
      __$$_ReportStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ReportResponse response});
}

/// @nodoc
class __$$_ReportStateSuccessCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$_ReportStateSuccess>
    implements _$$_ReportStateSuccessCopyWith<$Res> {
  __$$_ReportStateSuccessCopyWithImpl(
      _$_ReportStateSuccess _value, $Res Function(_$_ReportStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_ReportStateSuccess(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ReportResponse,
    ));
  }
}

/// @nodoc

class _$_ReportStateSuccess implements _ReportStateSuccess {
  const _$_ReportStateSuccess({required this.response});

  @override
  final ReportResponse response;

  @override
  String toString() {
    return 'ReportState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportStateSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportStateSuccessCopyWith<_$_ReportStateSuccess> get copyWith =>
      __$$_ReportStateSuccessCopyWithImpl<_$_ReportStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(ReportResponse response) success,
    required TResult Function() refresh,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(ReportResponse response)? success,
    TResult? Function()? refresh,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(ReportResponse response)? success,
    TResult Function()? refresh,
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
    required TResult Function(_ReportStateFailed value) failed,
    required TResult Function(_ReportLoadingState value) loading,
    required TResult Function(_ReportStateSuccess value) success,
    required TResult Function(_ReportStateRefresh value) refresh,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReportStateFailed value)? failed,
    TResult? Function(_ReportLoadingState value)? loading,
    TResult? Function(_ReportStateSuccess value)? success,
    TResult? Function(_ReportStateRefresh value)? refresh,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportStateFailed value)? failed,
    TResult Function(_ReportLoadingState value)? loading,
    TResult Function(_ReportStateSuccess value)? success,
    TResult Function(_ReportStateRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ReportStateSuccess implements ReportState {
  const factory _ReportStateSuccess({required final ReportResponse response}) =
      _$_ReportStateSuccess;

  ReportResponse get response;
  @JsonKey(ignore: true)
  _$$_ReportStateSuccessCopyWith<_$_ReportStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportStateRefreshCopyWith<$Res> {
  factory _$$_ReportStateRefreshCopyWith(_$_ReportStateRefresh value,
          $Res Function(_$_ReportStateRefresh) then) =
      __$$_ReportStateRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReportStateRefreshCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$_ReportStateRefresh>
    implements _$$_ReportStateRefreshCopyWith<$Res> {
  __$$_ReportStateRefreshCopyWithImpl(
      _$_ReportStateRefresh _value, $Res Function(_$_ReportStateRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReportStateRefresh implements _ReportStateRefresh {
  const _$_ReportStateRefresh();

  @override
  String toString() {
    return 'ReportState.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReportStateRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() loading,
    required TResult Function(ReportResponse response) success,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? loading,
    TResult? Function(ReportResponse response)? success,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? loading,
    TResult Function(ReportResponse response)? success,
    TResult Function()? refresh,
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
    required TResult Function(_ReportStateFailed value) failed,
    required TResult Function(_ReportLoadingState value) loading,
    required TResult Function(_ReportStateSuccess value) success,
    required TResult Function(_ReportStateRefresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReportStateFailed value)? failed,
    TResult? Function(_ReportLoadingState value)? loading,
    TResult? Function(_ReportStateSuccess value)? success,
    TResult? Function(_ReportStateRefresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReportStateFailed value)? failed,
    TResult Function(_ReportLoadingState value)? loading,
    TResult Function(_ReportStateSuccess value)? success,
    TResult Function(_ReportStateRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _ReportStateRefresh implements ReportState {
  const factory _ReportStateRefresh() = _$_ReportStateRefresh;
}
