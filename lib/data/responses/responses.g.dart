// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      error_code: _$ErrorCodeFromJson(json['error_code'] as String),
      errors: json['errors'] as Map<String, dynamic>?,
      msg: json['msg'] as String?,
      status: json['status'] as int?,
      time: (json['time'] as num?)?.toDouble(),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'error_code': _$ErrorCodeEnumMap[instance.error_code],
      'errors': instance.errors,
      'msg': instance.msg,
      'status': instance.status,
      'time': instance.time,
      'version': instance.version,
    };

const _$ErrorCodeEnumMap = {
  ErrorCode.E_USER_ACCOUNT_NOT_EXISTS: 'E_USER_ACCOUNT_NOT_EXISTS',
  ErrorCode.E_USER_HAS_BLOCKED: 'E_USER_HAS_BLOCKED',
  ErrorCode.E_USER_NOT_EXISTS: 'E_USER_NOT_EXISTS',
  ErrorCode.E_USER_AUTH: 'E_USER_AUTH',
  ErrorCode.E_NO_ERROR: 'E_NO_ERROR',
  ErrorCode.E_NEW_PWD_IS_COINCIDE: 'E_NEW_PWD_IS_COINCIDE',
};

AuthenticationResponse _$AuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    AuthenticationResponse(
      data: json['data'] == null
          ? null
          : DataAuthenticationResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    )
      ..error_code = _$ErrorCodeFromJson(json['error_code'] as String)
      ..msg = json['msg'] as String?
      ..status = json['status'] as int?
      ..time = (json['time'] as num?)?.toDouble()
      ..version = json['version'] as String?;

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'error_code': _$ErrorCodeEnumMap[instance.error_code],
      'msg': instance.msg,
      'status': instance.status,
      'time': instance.time,
      'version': instance.version,
      'data': instance.data,
    };

DataAuthenticationResponse _$DataAuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    DataAuthenticationResponse(
      json['refresh_token'] as String?,
      json['token'] as String?,
    );

Map<String, dynamic> _$DataAuthenticationResponseToJson(
        DataAuthenticationResponse instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'token': instance.token,
    };

OrderListResponse _$OrderListResponseFromJson(Map<String, dynamic> json) =>
    OrderListResponse(
      json['data'] == null
          ? null
          : OrderListDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    )
      ..error_code = _$ErrorCodeFromJson(json['error_code'] as String)
      ..msg = json['msg'] as String?
      ..status = json['status'] as int?
      ..time = (json['time'] as num?)?.toDouble()
      ..version = json['version'] as String?;

Map<String, dynamic> _$OrderListResponseToJson(OrderListResponse instance) =>
    <String, dynamic>{
      'error_code': _$ErrorCodeEnumMap[instance.error_code],
      'msg': instance.msg,
      'status': instance.status,
      'time': instance.time,
      'version': instance.version,
      'data': instance.data,
    };

OrderListDataResponse _$OrderListDataResponseFromJson(
        Map<String, dynamic> json) =>
    OrderListDataResponse(
      (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] as int?,
    );

Map<String, dynamic> _$OrderListDataResponseToJson(
        OrderListDataResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'total': instance.total,
    };

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    OrderResponse(
      json['_id'] as String?,
      json['address'] as String?,
      (json['created_time'] as num?)?.toDouble(),
      json['cust_name'] as String?,
      json['cust_phone'] as String?,
      (json['fee_ship'] as num?)?.toDouble(),
      json['status'] as String?,
      json['order_id'] as String?,
      json['order_code'] as String?,
      _$OrderTypeFromJson(json['order_type'] as String),
      json['store_id'] as String?,
      (json['total_amount'] as num?)?.toDouble(),
      json['user_id'] as String?,
    );

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'address': instance.address,
      'created_time': instance.createdTime,
      'cust_name': instance.custName,
      'cust_phone': instance.custPhone,
      'fee_ship': instance.feeShip,
      'status': instance.status,
      'order_id': instance.orderId,
      'order_code': instance.orderCode,
      'order_type': _$OrderTypeEnumMap[instance.order_type],
      'store_id': instance.storeId,
      'total_amount': instance.totalAmount,
      'user_id': instance.userId,
    };

const _$OrderTypeEnumMap = {
  OrderType.NORMAL: 'NORMAL',
  OrderType.EXPRESS: 'EXPRESS',
};

OrderDetailsResponse _$OrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsResponse(
      data: OrderDetailsDataResponse.fromJson(
          json['data'] as Map<String, dynamic>),
    )
      ..error_code = _$ErrorCodeFromJson(json['error_code'] as String)
      ..msg = json['msg'] as String?
      ..status = json['status'] as int?
      ..time = (json['time'] as num?)?.toDouble()
      ..version = json['version'] as String?;

Map<String, dynamic> _$OrderDetailsResponseToJson(
        OrderDetailsResponse instance) =>
    <String, dynamic>{
      'error_code': _$ErrorCodeEnumMap[instance.error_code],
      'msg': instance.msg,
      'status': instance.status,
      'time': instance.time,
      'version': instance.version,
      'data': instance.data,
    };

OrderDetailsDataResponse _$OrderDetailsDataResponseFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsDataResponse(
      id: json['_id'] as String,
      address: json['address'] as String,
      createdTime: (json['created_time'] as num).toDouble(),
      custName: json['cust_name'] as String,
      custPhone: json['cust_phone'] as String,
      extract: json['extract'] as Map<String, dynamic>,
      feeShip: (json['fee_ship'] as num).toDouble(),
      orderCode: json['order_code'] as String,
      productList: (json['product_list'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      storeId: json['store_id'] as String,
      totalAmount: (json['total_amount'] as num).toDouble(),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$OrderDetailsDataResponseToJson(
        OrderDetailsDataResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'address': instance.address,
      'created_time': instance.createdTime,
      'cust_name': instance.custName,
      'cust_phone': instance.custPhone,
      'extract': instance.extract,
      'fee_ship': instance.feeShip,
      'order_code': instance.orderCode,
      'product_list': instance.productList,
      'status': instance.status,
      'store_id': instance.storeId,
      'total_amount': instance.totalAmount,
      'user_id': instance.userId,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      productName: json['product_name'] as String,
      productPrice: (json['product_price'] as num).toDouble(),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'product_name': instance.productName,
      'product_price': instance.productPrice,
      'quantity': instance.quantity,
    };

StoreListResponse _$StoreListResponseFromJson(Map<String, dynamic> json) =>
    StoreListResponse(
      data: StoreDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..error_code = _$ErrorCodeFromJson(json['error_code'] as String)
      ..msg = json['msg'] as String?
      ..status = json['status'] as int?
      ..time = (json['time'] as num?)?.toDouble()
      ..version = json['version'] as String?;

Map<String, dynamic> _$StoreListResponseToJson(StoreListResponse instance) =>
    <String, dynamic>{
      'error_code': _$ErrorCodeEnumMap[instance.error_code],
      'msg': instance.msg,
      'status': instance.status,
      'time': instance.time,
      'version': instance.version,
      'data': instance.data,
    };

StoreDataResponse _$StoreDataResponseFromJson(Map<String, dynamic> json) =>
    StoreDataResponse(
      storeTotal: json['store_total'] as int?,
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => StoreModelResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$StoreDataResponseToJson(StoreDataResponse instance) =>
    <String, dynamic>{
      'store_total': instance.storeTotal,
      'stores': instance.stores,
      'total': instance.total,
    };

StoreModelResponse _$StoreModelResponseFromJson(Map<String, dynamic> json) =>
    StoreModelResponse(
      id: json['_id'] as String,
      storeCode: json['store_code'] as String,
      address: json['address'] as String,
      amountWaitOrder: (json['amount_wait_order'] as num?)?.toDouble(),
      createdTime: (json['created_time'] as num).toDouble(),
      extract: json['extract'] as Map<String, dynamic>,
      name: json['name'] as String,
      phone: json['phone'] as String,
      status: _$StoreStatusFromJson(json['status'] as String),
      waitOrder: json['wait_order'] as int,
    );

Map<String, dynamic> _$StoreModelResponseToJson(StoreModelResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'store_code': instance.storeCode,
      'address': instance.address,
      'amount_wait_order': instance.amountWaitOrder,
      'created_time': instance.createdTime,
      'extract': instance.extract,
      'name': instance.name,
      'phone': instance.phone,
      'status': _$StoreStatusEnumMap[instance.status]!,
      'wait_order': instance.waitOrder,
    };

const _$StoreStatusEnumMap = {
  StoreStatus.ACTIVE: 'ACTIVE',
  StoreStatus.BLOCKED: 'BLOCKED',
};

ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) =>
    ReportResponse(
      data: ReportDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..error_code = _$ErrorCodeFromJson(json['error_code'] as String)
      ..msg = json['msg'] as String?
      ..status = json['status'] as int?
      ..time = (json['time'] as num?)?.toDouble()
      ..version = json['version'] as String?;

Map<String, dynamic> _$ReportResponseToJson(ReportResponse instance) =>
    <String, dynamic>{
      'error_code': _$ErrorCodeEnumMap[instance.error_code],
      'msg': instance.msg,
      'status': instance.status,
      'time': instance.time,
      'version': instance.version,
      'data': instance.data,
    };

ReportDataResponse _$ReportDataResponseFromJson(Map<String, dynamic> json) =>
    ReportDataResponse(
      orderCancel: json['order_cancel'] as int?,
      orderDelivering: json['order_delivering'] as int?,
      orderFail: json['order_fail'] as int?,
      orderPartialSuccess: json['order_partial_success'] as int?,
      orderSuccess: json['order_success'] as int?,
      orderWait: json['order_wait'] as int?,
      ship: (json['ship'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      totalOrder: json['total_order'] as int?,
    );

Map<String, dynamic> _$ReportDataResponseToJson(ReportDataResponse instance) =>
    <String, dynamic>{
      'order_cancel': instance.orderCancel,
      'order_delivering': instance.orderDelivering,
      'order_fail': instance.orderFail,
      'order_partial_success': instance.orderPartialSuccess,
      'order_success': instance.orderSuccess,
      'order_wait': instance.orderWait,
      'ship': instance.ship,
      'total_amount': instance.totalAmount,
      'total_order': instance.totalOrder,
    };
