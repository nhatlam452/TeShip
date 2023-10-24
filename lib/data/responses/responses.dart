import 'package:json_annotation/json_annotation.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';

import '../../utils/methods/aliases.dart';

part 'responses.g.dart';

enum PermissionUser {
  SHIP,
  SHOP
}

PermissionUser $PermissionUserFromJson(String value) {
  switch (value) {
    case 'admin':
      return PermissionUser.SHIP;
    case 'store':
      return PermissionUser.SHOP;
    default:
      logIt
        ..info('ERROR -- Could not parse "PermissionUser": $value');
      throw new ArgumentError.value(value, 'value',
          'Could not parse "PermissionUser": $value');
  }
}

enum ErrorCode {
  E_USER_ACCOUNT_NOT_EXISTS,
  E_USER_HAS_BLOCKED,
  E_USER_NOT_EXISTS,
  E_USER_AUTH,
  E_NO_ERROR,//Extra to handle when not error
  E_NEW_PWD_IS_COINCIDE,//For Password
}

extension ErrorCodeString on ErrorCode {
  String get errorString {
    switch (this) {
      case ErrorCode.E_USER_ACCOUNT_NOT_EXISTS:
        return 'Sai mật khẩu';
      case ErrorCode.E_USER_HAS_BLOCKED:
        return 'User đã bị khoá';
      case ErrorCode.E_USER_NOT_EXISTS:
        return 'User không tồn tại';
      case ErrorCode.E_USER_AUTH:
        return 'Vui lòng đăng nhập lại';
      case ErrorCode.E_NEW_PWD_IS_COINCIDE:
        return 'Mật khẩu mới không được trùng với mật khẩu trước đó';
      case ErrorCode.E_NO_ERROR:
        return '';
      }
    }
}

ErrorCode _$ErrorCodeFromJson(String value) {
  switch (value) {
    case 'E_USER_ACCOUNT_NOT_EXISTS':
      return ErrorCode.E_USER_ACCOUNT_NOT_EXISTS;
    case 'E_USER_HAS_BLOCKED':
      return ErrorCode.E_USER_HAS_BLOCKED;
    case 'E_USER_NOT_EXISTS':
      return ErrorCode.E_USER_NOT_EXISTS;
    case 'E_USER_AUTH':
      return ErrorCode.E_USER_AUTH;
    case 'E_NEW_PWD_IS_COINCIDE':
      return ErrorCode.E_NEW_PWD_IS_COINCIDE;
    case '':
      return ErrorCode.E_NO_ERROR;
    default:
      throw new ArgumentError.value(value, 'value',
          'Could not parse "ErrorCode": $value');
  }
}
@JsonSerializable()
class BaseResponse {
  @JsonKey(fromJson: _$ErrorCodeFromJson)
  ErrorCode? error_code;
  @JsonKey(name: 'errors')
  final Map<String, dynamic>? errors;
  @JsonKey(name: 'msg')
  String? msg;
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'time')
  double? time;
  @JsonKey(name: 'version')
  String? version;

  //custom value type
  BaseResponse(
      { this.error_code,
        this.errors,
        this.msg,
        this.status,
        this.time,
        this.version});

  // toJson
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  // fromJson
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}



@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: 'data')
  DataAuthenticationResponse? data;

  //custom value type
  AuthenticationResponse({this.data}) : super(
    error_code: ErrorCode.E_NO_ERROR,
    errors: {},
    msg: '',
    status: 1,
    time: DateTime.now().microsecondsSinceEpoch.toDouble(),
    version: 'v1',
  );

  // toJson
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);

  // fromJson
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);
}

@JsonSerializable()
class DataAuthenticationResponse {
  @JsonKey(name: 'refresh_token')
  String? refreshToken;
  @JsonKey(name: 'token')
  String? token;

  DataAuthenticationResponse(this.refreshToken, this.token);

  // toJson
  Map<String, dynamic> toJson() => _$DataAuthenticationResponseToJson(this);

  // fromJson
  factory DataAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$DataAuthenticationResponseFromJson(json);
}


@JsonSerializable()
class OrderListResponse extends BaseResponse {
  @JsonKey(name: 'data')
  OrderListDataResponse? data;

  OrderListResponse(this.data) : super(
    error_code: ErrorCode.E_NO_ERROR,
    errors: {},
    msg: '',
    status: 1,
    time: DateTime.now().microsecondsSinceEpoch.toDouble(),
    version: 'v1',
  );

  // toJson
  Map<String, dynamic> toJson() => _$OrderListResponseToJson(this);

  // fromJson
  factory OrderListResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponseFromJson(json);
}

@JsonSerializable()
class OrderListDataResponse {
  @JsonKey(name: 'orders')
  List<OrderResponse>? orders;
  @JsonKey(name: 'total')
  int? total;

  OrderListDataResponse(this.orders, this.total);

  // toJson
  Map<String, dynamic> toJson() => _$OrderListDataResponseToJson(this);

  // fromJson
  factory OrderListDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderListDataResponseFromJson(json);
}
enum OrderType {
  NORMAL,
  EXPRESS,
}

extension OrderTypeExtension on OrderType {
  String get displayText {
    switch (this) {
      case OrderType.NORMAL:
        return 'Giao thường';
      case OrderType.EXPRESS:
        return 'Hoả tốc';
    }
  }
  String get requestText {
    switch (this) {
      case OrderType.NORMAL:
        return 'normal';
      case OrderType.EXPRESS:
        return 'express';
    }
  }
}

OrderType _$OrderTypeFromJson(String value) {
  switch (value) {
    case 'normal':
      return OrderType.NORMAL;
    case 'express':
      return OrderType.EXPRESS;
    default:
      throw new ArgumentError.value(value, 'value',
          'Could not parse "ErrorCode": $value');
  }
}
@JsonSerializable()
class OrderResponse {
  @JsonKey(name: '_id')
  String? sId;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'created_time')
  double? createdTime;
  @JsonKey(name: 'cust_name')
  String? custName;
  @JsonKey(name: 'cust_phone')
  String? custPhone;
  @JsonKey(name: 'fee_ship')
  double? feeShip;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'order_id')
  String? orderId;
  @JsonKey(name: 'order_code')
  String? orderCode;
  @JsonKey(fromJson: _$OrderTypeFromJson)
  OrderType? order_type;
  @JsonKey(name: 'store_id')
  String? storeId;
  @JsonKey(name: 'total_amount')
  double? totalAmount;
  @JsonKey(name: 'user_id')
  String? userId;

  OrderResponse(this.sId, this.address, this.createdTime, this.custName, this.custPhone, this.feeShip, this.status, this.orderId, this.orderCode, this.order_type, this.storeId, this.totalAmount, this.userId);

  // toJson
  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);

  // fromJson
  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

// OrderDetail
@JsonSerializable()
class OrderDetailsResponse extends BaseResponse {
  @JsonKey(name: 'data')
  final OrderDetailsDataResponse data;

  //custom value type
  OrderDetailsResponse({
    required this.data,
  }) : super(
    error_code: ErrorCode.E_NO_ERROR,
    errors: {},
    msg: '',
    status: 1,
    time: DateTime.now().microsecondsSinceEpoch.toDouble(),
    version: 'v1',
  );

  // toJson
  Map<String, dynamic> toJson() => _$OrderDetailsResponseToJson(this);

  // fromJson
  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseFromJson(json);

}

@JsonSerializable()
class OrderDetailsDataResponse {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'created_time')
  final double createdTime;
  @JsonKey(name: 'cust_name')
  final String custName;
  @JsonKey(name: 'cust_phone')
  final String custPhone;
  @JsonKey(name: 'extract')
  final Map<String, dynamic> extract;
  @JsonKey(name: 'fee_ship')
  final double feeShip;
  @JsonKey(name: 'order_code')
  final String orderCode;
  @JsonKey(name: 'product_list')
  final List<Product> productList;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_id')
  final String storeId;
  @JsonKey(name: 'total_amount')
  final double totalAmount;
  @JsonKey(name: 'user_id')
  final String userId;

  OrderDetailsDataResponse({
    required this.id,
    required this.address,
    required this.createdTime,
    required this.custName,
    required this.custPhone,
    required this.extract,
    required this.feeShip,
    required this.orderCode,
    required this.productList,
    required this.status,
    required this.storeId,
    required this.totalAmount,
    required this.userId,
  });

  factory OrderDetailsDataResponse.empty() => OrderDetailsDataResponse(
  id: '',
  address: '',
  createdTime: DateTime.now().microsecondsSinceEpoch.toDouble(),
  custName: '',
  custPhone: '',
  extract: {},
  feeShip: 0.0,
  orderCode: '',
  productList: [ Product(productName: '', productPrice: 0.0, quantity: 1)],
  status: OrderShipStatusCode.WAITING.getRequestText(),
  storeId: '',
  totalAmount: 0.0,
  userId: '',);
  factory OrderDetailsDataResponse.fromJson(Map<String, dynamic> json) => _$OrderDetailsDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsDataResponseToJson(this);
}

@JsonSerializable()
class Product {
  @JsonKey(name: 'product_name')
  final String productName;
  @JsonKey(name: 'product_price')
  final double productPrice;
  final int quantity;

  Product({
    required this.productName,
    required this.productPrice,
    required this.quantity,
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class StoreListResponse extends BaseResponse {
  @JsonKey(name: 'data')
  final StoreDataResponse data;

  StoreListResponse({
    required this.data
  }) : super(
    error_code: ErrorCode.E_NO_ERROR,
    errors: {},
    msg: '',
    status: 1,
    time: DateTime.now().microsecondsSinceEpoch.toDouble(),
    version: 'v1',
  );

  factory StoreListResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StoreListResponseToJson(this);
}
@JsonSerializable()
class StoreDataResponse {
  @JsonKey(name: 'store_total')
  final int? storeTotal;
  @JsonKey(name: 'stores')
  final List<StoreModelResponse>? stores;
  @JsonKey(name: 'total')
  final int? total;

  StoreDataResponse({
    this.storeTotal,
    this.stores,
    this.total,
  });

  factory StoreDataResponse.fromJson(Map<String, dynamic> json) => _$StoreDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StoreDataResponseToJson(this);
}

enum StoreStatus {
  ACTIVE,
  BLOCKED,
}

StoreStatus _$StoreStatusFromJson(String value) {
  switch (value) {
    case 'active':
      return StoreStatus.ACTIVE;
    case 'blocked':
      return StoreStatus.BLOCKED;
    default:
      throw new ArgumentError.value(value, 'value',
          'Could not parse "ErrorCode": $value');
  }
}

@JsonSerializable()
  class StoreModelResponse {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'store_code')
  final String storeCode;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'amount_wait_order')
  final double? amountWaitOrder;
  @JsonKey(name: 'created_time')
  final double createdTime;
  @JsonKey(name: 'extract')
  final Map<String, dynamic> extract;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(fromJson: _$StoreStatusFromJson)
  final StoreStatus status;
  @JsonKey(name: 'wait_order')
  final int waitOrder;

  StoreModelResponse({
    required this.id,
    required this.storeCode,
    required this.address,
    this.amountWaitOrder,
    required this.createdTime,
    required this.extract,
    required this.name,
    required this.phone,
    required this.status,
    required this.waitOrder,
  });

  factory StoreModelResponse.fromJson(Map<String, dynamic> json) => _$StoreModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StoreModelResponseToJson(this);
}

@JsonSerializable()
class ReportResponse extends BaseResponse {
  @JsonKey(name: 'data')
  ReportDataResponse data;

  ReportResponse({
    required this.data,
  }): super(
    error_code: ErrorCode.E_NO_ERROR,
    errors: {},
    msg: '',
    status: 1,
    time: DateTime.now().microsecondsSinceEpoch.toDouble(),
    version: 'v1',
  );

  factory ReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReportResponseToJson(this);
}


@JsonSerializable()
class ReportDataResponse {
  @JsonKey(name: 'order_cancel')
  int? orderCancel;

  @JsonKey(name: 'order_delivering')
  int? orderDelivering;

  @JsonKey(name: 'order_fail')
  int? orderFail;

  @JsonKey(name: 'order_partial_success')
  int? orderPartialSuccess;

  @JsonKey(name: 'order_success')
  int? orderSuccess;

  @JsonKey(name: 'order_wait')
  int? orderWait;



  @JsonKey(name: 'ship')
  double? ship;

  @JsonKey(name: 'total_amount')
  double? totalAmount;

  @JsonKey(name: 'total_order')
  int? totalOrder;

  ReportDataResponse({
    this.orderCancel,
    this.orderDelivering,
    this.orderFail,
    this.orderPartialSuccess,
    this.orderSuccess,
    this.orderWait,
    this.ship,
    this.totalAmount,
    this.totalOrder,
  });

  factory ReportDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReportDataResponseToJson(this);
}

