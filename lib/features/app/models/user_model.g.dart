// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      storeId: json['storeId'] as String,
      storeCode: json['storeCode'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      permission: json['permission'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'email': instance.email,
      'storeId': instance.storeId,
      'storeCode': instance.storeCode,
      'name': instance.name,
      'address': instance.address,
      'permission': instance.permission,
    };
