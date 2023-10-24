import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teship/data/responses/responses.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    required String custName,
    required String custPhone,
    required String address,
    required String storeId,
    required String storeCode,
    required String userId,
    required List<ProductModel> productList,
    required double totalAmount,
    required double feeShip,
    required Map<String, dynamic> extract,
    required String status,
    required OrderType orderType,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
extension OrderModelRequest on OrderModel {

  Map<String, dynamic> toRequestModel() {
    var productRequestList = <Map<String, dynamic>>[];
    this.productList.forEach((element) {

      final productData = {
        'product_name': element.productName,
        'product_price': element.productPrice,
        'quantity': element.quantity,
      };
      productRequestList.add(productData);
    });

    return {
      'cust_name' : this.custName,
      'cust_phone' : this.custPhone,
      'address' : this.address,
      'store_id' : this.storeId,
      'store_code' : this.storeCode,
      'user_id' : this.userId,
      'product_list' : productRequestList,
      'total_amount' : this.totalAmount,
      'fee_ship' : this.feeShip,
      'extract' : this.extract,
      'status' : this.status,
      'order_type' : this.orderType.requestText,
    };
  }
}

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required String productName,
    required double productPrice,
    required int quantity,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

}
