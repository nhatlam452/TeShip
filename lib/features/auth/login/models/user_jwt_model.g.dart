// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_jwt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserJWTModel _$$_UserJWTModelFromJson(Map<String, dynamic> json) =>
    _$_UserJWTModel(
      payload: Payload.fromJson(json['payload'] as Map<String, dynamic>),
      iat: json['iat'] as int,
    );

Map<String, dynamic> _$$_UserJWTModelToJson(_$_UserJWTModel instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'iat': instance.iat,
    };
