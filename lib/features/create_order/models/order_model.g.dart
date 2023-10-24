// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      custName: json['custName'] as String,
      custPhone: json['custPhone'] as String,
      address: json['address'] as String,
      storeId: json['storeId'] as String,
      storeCode: json['storeCode'] as String,
      userId: json['userId'] as String,
      productList: (json['productList'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      feeShip: (json['feeShip'] as num).toDouble(),
      extract: json['extract'] as Map<String, dynamic>,
      status: json['status'] as String,
      orderType: $enumDecode(_$OrderTypeEnumMap, json['orderType']),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'custName': instance.custName,
      'custPhone': instance.custPhone,
      'address': instance.address,
      'storeId': instance.storeId,
      'storeCode': instance.storeCode,
      'userId': instance.userId,
      'productList': instance.productList,
      'totalAmount': instance.totalAmount,
      'feeShip': instance.feeShip,
      'extract': instance.extract,
      'status': instance.status,
      'orderType': _$OrderTypeEnumMap[instance.orderType]!,
    };

const _$OrderTypeEnumMap = {
  OrderType.NORMAL: 'NORMAL',
  OrderType.EXPRESS: 'EXPRESS',
};

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      productName: json['productName'] as String,
      productPrice: (json['productPrice'] as num).toDouble(),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'quantity': instance.quantity,
    };
