import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import '../../../../../../utils/methods/shortcuts.dart';
import '../../../../../app/widgets/customs/currency_textinput_formatter.dart';
import '../../../../../app/widgets/customs/custom_textfield.dart';
import '../../../../form/create_order_form.dart';


class InfoProductCreateOrderView extends StatefulWidget {
  const InfoProductCreateOrderView({
    super.key,
    required this.infoProductForm,
    this.isFirst = true,

    this.onAddProduct,
    this.onRemoveProduct,
    required this.onChangeQuantity,
  });

  final bool isFirst;
  final FormGroup? infoProductForm;
  final void Function()? onAddProduct;
  final void Function()? onRemoveProduct;
  final void Function(bool) onChangeQuantity;

  @override
  State<InfoProductCreateOrderView> createState() => _InfoProductCreateOrderViewState();
}

class _InfoProductCreateOrderViewState extends State<InfoProductCreateOrderView> {
  late FormGroup infoProductForm;
  String get productName => infoProductForm.control('product_name').value.toString();
  String get unitPrice => infoProductForm.control('unit_price').value.toString();
  int get quantity => infoProductForm.control('quantity').value.toString().toInt();

  @override
  initState() {
    infoProductForm = widget.infoProductForm ?? infoCustomerCreateOrderForm;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: infoProductForm,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Visibility(
              visible: !widget.isFirst,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25,
                  ),
                  child: getLineDivider(getSize(context).width - 40),
                ),
            ),
            Stack(
              children: [
                CustomTextField(
                  key: const Key('product_name'),
                  formControlName: 'product_name',
                  titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  titleText:context.t.strings.form.product_name.label,
                  labelText: context.t.strings.form.product_name.hint,
                  hintText: context.t.strings.form.product_name.hint,
                  minLength: 1,
                  maxLength: 200,
                  isRequired: true,
                ),
                Visibility(
                  visible: widget.isFirst,
                  replacement: Row(
                    children: [
                      const Spacer(),

                      GestureDetector(
                        onTap: widget.onAddProduct,
                        child: Text("Thêm sản phẩm",
                          style: getTextStyle(context, CustomTextStyle.text1Italic16),
                        ),
                      ),
                      SizedBox(width: getDynamicWidth(context, 30),),
                      GestureDetector(
                        onTap: widget.onRemoveProduct,
                        child: Text("Xoá",
                          style: getTextStyle(context, CustomTextStyle.text1Italic16),
                        ),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: widget.onAddProduct,
                        child: Text("Thêm sản phẩm",
                          style: getTextStyle(context, CustomTextStyle.text1Italic16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16,),
            Row(
              children: [
                SizedBox(width: getDynamicWidth(context,200),
                  child: CustomTextField(
                    key: const Key('unit_price'),
                    formControlName: 'unit_price',
                    titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CurrencyTextInputFormatter(),
                    ],
                    textInputAction: TextInputAction.next,
                    titleText:context.t.strings.form.unit_price.label,
                    labelText: context.t.strings.form.unit_price.hint,
                    hintText: context.t.strings.form.unit_price.hint,
                    isRequired: true,
                  ),
                ),

                const Spacer(),

                Column(
                  children: [
                    Text(
                      context.t.strings.create_order.text_quantity,
                      style: getTextStyle(context, CustomTextStyle.heading5Bold16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ReactiveValueListenableBuilder<String>(
                          formControlName: 'quantity',
                          builder: (context, value, child) {
                            return TextButton(
                              onPressed: (){
                                widget.onChangeQuantity(false);
                              },
                              child: SvgPicture.asset((quantity.toInt() < 2) ? 'assets/images/dashboard/ic_decrease_gray.svg' : 'assets/images/dashboard/ic_decrease_green.svg'),
                            );
                          },
                        ),

                        Text(quantity.toInt().toString(),
                          style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),),

                        ReactiveValueListenableBuilder<String>(
                          formControlName: 'quantity',
                          builder: (context, value, child) {
                            return TextButton(
                              onPressed: (){
                                widget.onChangeQuantity(true);
                              },
                              child: SvgPicture.asset('assets/images/dashboard/ic_add_green.svg'),
                            );
                          },
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}