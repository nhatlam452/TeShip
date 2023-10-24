// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_jwt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserJWTModel _$UserJWTModelFromJson(Map<String, dynamic> json) {
  return _UserJWTModel.fromJson(json);
}

/// @nodoc
mixin _$UserJWTModel {
  Payload get payload => throw _privateConstructorUsedError;
  int get iat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserJWTModelCopyWith<UserJWTModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserJWTModelCopyWith<$Res> {
  factory $UserJWTModelCopyWith(
          UserJWTModel value, $Res Function(UserJWTModel) then) =
      _$UserJWTModelCopyWithImpl<$Res, UserJWTModel>;
  @useResult
  $Res call({Payload payload, int iat});

  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$UserJWTModelCopyWithImpl<$Res, $Val extends UserJWTModel>
    implements $UserJWTModelCopyWith<$Res> {
  _$UserJWTModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? iat = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res> get payload {
    return $PayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserJWTModelCopyWith<$Res>
    implements $UserJWTModelCopyWith<$Res> {
  factory _$$_UserJWTModelCopyWith(
          _$_UserJWTModel value, $Res Function(_$_UserJWTModel) then) =
      __$$_UserJWTModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Payload payload, int iat});

  @override
  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_UserJWTModelCopyWithImpl<$Res>
    extends _$UserJWTModelCopyWithImpl<$Res, _$_UserJWTModel>
    implements _$$_UserJWTModelCopyWith<$Res> {
  __$$_UserJWTModelCopyWithImpl(
      _$_UserJWTModel _value, $Res Function(_$_UserJWTModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? iat = null,
  }) {
    return _then(_$_UserJWTModel(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserJWTModel implements _UserJWTModel {
  const _$_UserJWTModel({required this.payload, required this.iat});

  factory _$_UserJWTModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserJWTModelFromJson(json);

  @override
  final Payload payload;
  @override
  final int iat;

  @override
  String toString() {
    return 'UserJWTModel(payload: $payload, iat: $iat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserJWTModel &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.iat, iat) || other.iat == iat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload, iat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserJWTModelCopyWith<_$_UserJWTModel> get copyWith =>
      __$$_UserJWTModelCopyWithImpl<_$_UserJWTModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserJWTModelToJson(
      this,
    );
  }
}

abstract class _UserJWTModel implements UserJWTModel {
  const factory _UserJWTModel(
      {required final Payload payload,
      required final int iat}) = _$_UserJWTModel;

  factory _UserJWTModel.fromJson(Map<String, dynamic> json) =
      _$_UserJWTModel.fromJson;

  @override
  Payload get payload;
  @override
  int get iat;
  @override
  @JsonKey(ignore: true)
  _$$_UserJWTModelCopyWith<_$_UserJWTModel> get copyWith =>
      throw _privateConstructorUsedError;
}
