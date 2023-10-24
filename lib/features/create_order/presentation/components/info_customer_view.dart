import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:teship/i18n/strings.g.dart';

import '../../../../utils/methods/shortcuts.dart';
import '../../../app/widgets/customs/custom_button.dart';
import '../../../app/widgets/customs/custom_textfield.dart';
import '../../form/create_order_form.dart';


class InfoCustomerCreateOrderView extends StatefulWidget {
  const InfoCustomerCreateOrderView({
    super.key,
    required this.infoCustomerForm,
    this.clickContinue,
  });

  final FormGroup infoCustomerForm;
  final void Function()? clickContinue;

  @override
  State<InfoCustomerCreateOrderView> createState() => _InfoCustomerCreateOrderViewState();
}

class _InfoCustomerCreateOrderViewState extends State<InfoCustomerCreateOrderView> {
  late RoundedLoadingButtonController _btnController;
  late FormGroup infoCustomerForm;

  String get name => infoCustomerForm.control('name').value.toString();
  String get phone => infoCustomerForm.control('phone').value.toString();
  String get address => infoCustomerForm.control('address').value.toString();

  @override
  initState() {
    _btnController = RoundedLoadingButtonController();
    infoCustomerForm = widget.infoCustomerForm ?? infoCustomerCreateOrderForm;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
        formGroup: infoCustomerForm,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomTextField(
                key: const Key('name'),
                formControlName: 'name',
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                titleText:context.t.strings.form.full_name.label,
                labelText: context.t.strings.form.full_name.hint,
                hintText: context.t.strings.form.full_name.hint,
                minLength: 1,
                maxLength: 200,
                isRequired: true,
              ),
              const SizedBox(height: 16,),
              CustomTextField(
                key: const Key('phone'),
                formControlName: 'phone',
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                titleText:context.t.strings.form.phone.label,
                labelText: context.t.strings.form.phone.hint,
                hintText: context.t.strings.form.phone.hint,
                minLength: 10,
                maxLength: 10,
                isRequired: true,
              ),
              const SizedBox(height: 16,),
              ReactiveFormConsumer(
                builder: (context, formGroup, child) {
                  return CustomTextField(
                    key: const Key('address'),
                    formControlName: 'address',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.send,
                    titleText:context.t.strings.form.transfer_address.label,
                    labelText: context.t.strings.form.transfer_address.hint,
                    hintText: context.t.strings.form.transfer_address.hint,
                    minLength: 1,
                    maxLength: 2000,
                    isRequired: true,
                    onSubmitted: (_) {
                      widget.clickContinue!();
                    },
                  );
                },
              ),
              SizedBox(height: getDynamicHeight(context, 35)),
              ReactiveFormConsumer(
                builder: (context, formGroup, child) => CustomButton(
                  controller: _btnController,
                  width: getSize(context).width,
                  text: context.t.strings.create_order.text_continue,
                  onPressed: infoCustomerForm.valid
                      ? widget.clickContinue
                      : null,
                ),
              ),
            ],
          ),
        ),
    );
  }

}