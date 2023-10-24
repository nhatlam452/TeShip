import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:teship/features/create_order/form/create_order_form.dart';
import 'package:teship/features/create_order/presentation/components/info_order_view/components/info_product_view.dart';

import 'models/info_order_view_model.dart';


class InfoOrderCreateOrderView extends StatefulWidget {
  const InfoOrderCreateOrderView({
    super.key,
    required this.listInfoProductForm,
    required this.onChangeQuantity,
  });

  final List<InfoOrderViewModel> listInfoProductForm;
  final void Function(bool, int) onChangeQuantity;

  @override
  State<InfoOrderCreateOrderView> createState() => InfoOrderCreateOrderViewState();
}

class InfoOrderCreateOrderViewState extends State<InfoOrderCreateOrderView> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.listInfoProductForm.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: InfoProductCreateOrderView(
            infoProductForm: widget.listInfoProductForm[index].formGroup,
            onChangeQuantity: (isAdd) {
              widget.onChangeQuantity(isAdd, index);
            },
            onAddProduct: onAddProduct,
            onRemoveProduct: (){
              onRemoveProduct(index);
            },
            isFirst: index == 0,
          ),
        );
      },
    );
  }

  void onAddProduct() {
    print("DEBUG: add Product");
    setState(() {
      widget.listInfoProductForm.add(
        InfoOrderViewModel(infoProductCreateOrderForm, 1),
      );
    });
  }

  void onRemoveProduct(int index) {
    print("DEBUG: remove Product");
    if (index != 0){
      setState(() {
        widget.listInfoProductForm.removeAt(index);
      });
    }

  }
}