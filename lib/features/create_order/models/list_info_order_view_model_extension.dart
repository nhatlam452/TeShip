import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:teship/features/create_order/presentation/components/info_order_view/models/info_order_view_model.dart';
import 'package:teship/utils/methods/shortcuts.dart';

extension ListInfoOrderViewModelExtension on List<InfoOrderViewModel>{
  double getTotalPriceInList() {
    if ((this.length == 0) || (this.first.formGroup.control('unit_price').value.toString() == '') || (this.first.formGroup.control('quantity').value.toString() == '')) {
      return 0.0;
    }
    // var listPrice = this.map((e) => e.formGroup.getDoubleValue('unit_price') * e.formGroup.getDoubleValue('unit_price')).toList();
    // var listQuantity = this.map((e) => e.formGroup.getDoubleValue('quantity') * e.formGroup.getIntValue('unit_price')).toList();

    var total = 0.0;
    // if (listPrice.length == listQuantity.length) {
    //   for (int i = 0; i < listPrice.length; i++) {
    //     print("DEBUG: total = $total/price:${listPrice[i]}/quantity:${listQuantity[i]}");
    //     total = total + listPrice[i]*listQuantity[i];
    //   }
    // }
    // else {
    //   return 0.0;
    // }
    // return total;
    for (int i = 0; i < this.length; i++) {
      final double price = this[i].formGroup.getDoubleValue('unit_price');
      var quantity = this[i].formGroup.getIntValue('quantity');
      print('DEBUG: i:$i/price:$price/quantity:$quantity');
      total = total + price*quantity;
    }

    return total;
  }

  bool isAllValid() {
    var value = true;

    for (var i = 0; i < this.length; i++) {
      if (value == false) {
        return false;
      }
      value = value && this[i].formGroup.valid ;
    }
    return value;
  }
}

