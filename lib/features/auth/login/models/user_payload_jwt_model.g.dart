// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_payload_jwt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payload _$$_PayloadFromJson(Map<String, dynamic> json) => _$_Payload(
      phone: json['phone'] as String,
      email: json['email'] as String,
      store_id: json['store_id'] as String,
      store_code: json['store_code'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      permission: json['permission'] as String,
    );

Map<String, dynamic> _$$_PayloadToJson(_$_Payload instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'store_id': instance.store_id,
      'store_code': instance.store_code,
      'name': instance.name,
      'address': instance.address,
      'permission': instance.permission,
    };
