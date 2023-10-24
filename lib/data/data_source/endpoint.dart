
import 'package:teship/utils/constants.dart';

enum EndPointFeatures {
  login,
  orderList,
  orderDetail,
  createOrder,
  updateOrder,
  storeList,
  reportShop,
  reportShip,
  changePass,
  checkOrder
}

extension EndPointFeaturesLink on EndPointFeatures {
  String get url{
    var baseURL = $constants.url;
    var link = '';
    switch(this){
      case EndPointFeatures.login:
        link = 'user/login';
        break;
      case EndPointFeatures.orderList:
        link = 'order/orders';
        break;
      case EndPointFeatures.orderDetail:
        link = 'order/detail';
        break;
      case EndPointFeatures.createOrder:
        link = 'order/order-cr';
        break;
      case EndPointFeatures.updateOrder:
        link = 'order/update-status';
        break;
      case EndPointFeatures.storeList:
        link = 'store/stores';
        break;
      case EndPointFeatures.reportShop:
        link = 'store/report';
        break;
      case EndPointFeatures.reportShip:
        link = 'store/report-admin';
        break;
      case EndPointFeatures.changePass:
        link = 'user/change-pwd';
        break;
      case EndPointFeatures.checkOrder:
        link = 'order/check-order';
        break;
    }
    return '$baseURL/$link';
  }
}