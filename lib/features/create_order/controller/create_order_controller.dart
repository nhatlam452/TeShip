import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/app/models/alert_model.dart';
import 'package:teship/features/app/widgets/bar/bar.dart';
import 'package:teship/features/create_order/blocs/create_order_cubit.dart';
import 'package:teship/features/create_order/models/list_info_order_view_model_extension.dart';
import 'package:teship/features/create_order/models/order_model.dart';
import 'package:teship/features/create_order/presentation/create_order_screen.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:teship/i18n/strings.g.dart';

import '../../../utils/helpers/bar_helper.dart';
import '../../app/widgets/customs/base_alert_dialog.dart';
import '../../order_list/models/order_status_code.dart';
import '../models/step_create_order.dart';

extension CreateOrderController on CreateOrderScreenState {
  void clickContinue() {
    setState(() {
      if (currentStep == StepCreateOrder.infoCustomer) {
        currentStep = StepCreateOrder.infoOrder;
      }
      if ((currentStep == StepCreateOrder.infoOrder) && deliveryChargesForm.valid) {
        var baseDialog = BaseAlertDialog(
          content: context.t.strings.create_order.text_message_create_order,
          yesOnPressed: () async {
            final userInfo = await getUserInfo();
            final storeId = userInfo?.storeId ?? '';
            final storeCode = userInfo?.storeCode ?? '';
            final userId = userInfo?.id ?? '';
            final custName = infoCustomerForm?.control('name').value.toString() ?? '';
            final custPhone = infoCustomerForm?.control('phone').value.toString() ?? '';
            final address = infoCustomerForm?.control('address').value.toString() ?? '';


            List<ProductModel> productList = [];
            double totalAmount = (listInfoProductForm.getTotalPriceInList() + deliveryChargesForm.getDoubleValue('delivery_charges'));
            double feeShip = deliveryChargesForm.getDoubleValue('delivery_charges');

            for (var infoViewModel in listInfoProductForm) {
              var intQuantity = infoViewModel.formGroup.getIntValue('quantity');
              var productName = infoViewModel.formGroup.control('product_name').value.toString();
              var productPrice = infoViewModel.formGroup.getDoubleValue('unit_price');

              final productModel = ProductModel(productName: productName, quantity: intQuantity, productPrice: productPrice);

              productList.add(productModel);
            }
            final model = OrderModel(
              custName: custName,
              custPhone: custPhone,
              address: address,
              storeId: storeId,
              storeCode: storeCode,
              userId: userId,
              productList: productList,
              totalAmount: totalAmount,//HARD
              feeShip: feeShip,
              orderType: orderType ?? OrderType.NORMAL,
              extract: {},
              status: OrderShipStatusCode.WAITING.getRequestText(),
            );
            print("DEBUG: model: ${model.toJson()}");

            Navigator.of(context, rootNavigator: true)
                .pop();

            await cubit.createOrder(model);

          },
          cancelOnPressed: () {
            Navigator.of(context, rootNavigator: true)
                .pop();
          },
        );
        showDialog(context: context, builder: (BuildContext context) => baseDialog);
      }
    });

  }

  void onChangeQuantity(bool isAdd, int index){
    setState(() {
      var intQuantity = listInfoProductForm[index].formGroup.control('quantity').value.toString().toInt();
      if (isAdd) {
        listInfoProductForm[index].formGroup.control('quantity').updateValue((intQuantity + 1).toString());
      }
      else {
        if (intQuantity >= 2){
          listInfoProductForm[index].formGroup.control('quantity').updateValue((intQuantity - 1).toString());
        }
      }
    });
  }
}