import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:teship/features/change_info/form/change_info_form.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../utils/helpers/bar_helper.dart';
import '../../app/models/alert_model.dart';
import '../../app/widgets/bar/bar.dart';
import '../../app/widgets/customs/custom_button.dart';
import '../../app/widgets/customs/custom_textfield.dart';

class ChangeInfoScreen extends StatefulWidget {
  const ChangeInfoScreen({super.key});

  @override
  State<StatefulWidget> createState() => ChangeInfoScreenState();
}

class ChangeInfoScreenState extends State<ChangeInfoScreen>{
  late final FormGroup changeInfoLocalForm;

  @override
  void initState() {
    changeInfoLocalForm = changeInfoForm;
    getUserInfo()?.then((info) => {
      changeInfoLocalForm.control('full_name').updateValue(info?.name.wrappedValue()),
      changeInfoLocalForm.control('phone').updateValue(info?.phone.wrappedValue()),
      changeInfoLocalForm.control('email').updateValue(info?.email.wrappedValue()),
      changeInfoLocalForm.control('address').updateValue(info?.address.wrappedValue()),
      changeInfoLocalForm.control('store_code').updateValue(info?.storeCode.wrappedValue()),
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: Text(context.t.strings.setting.text_store_info,
          style: getTextStyle(context, CustomTextStyle.title1SemiBold24),),
        ),
        body: Stack(
          children: [
            ReactiveForm(
              formGroup: changeInfoLocalForm,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                    child: CustomTextField(
                      key: const Key('full_name'),
                      formControlName: 'full_name',
                      readOnly: true,
                      titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                      textInputAction: TextInputAction.next,
                      titleText:context.t.strings.form.full_name.label,
                      labelText: context.t.strings.form.full_name.hint,
                      hintText: context.t.strings.form.full_name.hint,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: CustomTextField(
                      key: const Key('phone'),
                      formControlName: 'phone',
                      titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                      textInputAction: TextInputAction.next,
                      titleText:context.t.strings.form.phone.label,
                      labelText: context.t.strings.form.phone.hint,
                      hintText: context.t.strings.form.phone.hint,
                      isRequired: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: CustomTextField(
                      key: const Key('email'),
                      formControlName: 'email',
                      titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                      textInputAction: TextInputAction.next,
                      titleText: context.t.strings.form.forgot_pass_email.label,
                      labelText: context.t.strings.form.forgot_pass_email.label,
                      hintText: context.t.strings.form.forgot_pass_email.label,
                      isRequired: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: CustomTextField(
                      key: const Key('address'),
                      formControlName: 'address',
                      titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                      textInputAction: TextInputAction.next,
                      titleText:context.t.strings.form.store_adress.label,
                      labelText: context.t.strings.form.store_adress.hint,
                      hintText: context.t.strings.form.store_adress.hint,
                      isRequired: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: CustomTextField(
                      key: const Key('store_code'),
                      formControlName: 'store_code',
                      titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                      textInputAction: TextInputAction.next,
                      titleText:context.t.strings.form.store_code.label,
                      labelText: context.t.strings.form.store_code.hint,
                      hintText: context.t.strings.form.store_code.hint,
                      isRequired: true,
                    ),
                  ),
                ],
              ),
            ),

            // to can not click to TextField above
            Container(
              width: getSize(context).width,
              height: getSize(context).height - 200,
              color: Colors.red.withOpacity(0),
            ),
          ],
        ),
      ),
    );
  }
}