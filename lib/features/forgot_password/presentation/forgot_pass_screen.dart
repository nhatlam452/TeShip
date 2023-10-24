import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:teship/utils/router.gr.dart';
import '../../../utils/constants.dart';
import '../../../utils/methods/shortcuts.dart';
import '../../app/widgets/customs/custom_button.dart';
import '../../app/widgets/customs/custom_textfield.dart';
import '../../app/widgets/utils/keyboard_dismisser.dart';
import 'package:teship/i18n/strings.g.dart';

import '../form/forgot_password_form.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});
  @override
  State<ForgotPassScreen> createState() => ForgotPassScreenState();
}

class ForgotPassScreenState extends State<ForgotPassScreen>{
  late RoundedLoadingButtonController _btnController;

  late FormGroup forgotPassForm;
  String get email => forgotPassForm.control('email').value.toString();

  @override
  initState() {
    _btnController = RoundedLoadingButtonController();
    forgotPassForm = forgotPasswordForm;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisserWidget(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Custom Appbar
                Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(left: 8),
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Text(
                      context.t.strings.forgot_password.title,
                      style: getTextStyle(context, CustomTextStyle.title1SemiBold24),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.01),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 12,
                        offset: const Offset(0, 0.6),
                      ),
                    ],
                  ),
                  height: 3,
                  width: getSize(context).width,
                ),

                Padding(padding: EdgeInsets.only(top: getDynamicHeight(context, 35)),
                  child: Center(child: Image.asset(
                    'assets/images/dashboard/logo_forgot_pass.png',
                    width: getDynamicWidth(context, 291),
                    height: getDynamicHeight(context, 291),
                  ),),
                ),

                SizedBox(height: getDynamicHeight(context, 11),),
                SizedBox(
                  width: getSize(context).width - 48,
                  child: Text(
                    context.t.strings.forgot_password.text_message_check_email,
                    style: getTextStyle(context, CustomTextStyle.body1Regular16),
                    textAlign: TextAlign.center,
                  ),
                ),
                ReactiveForm(
                  formGroup: forgotPassForm,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 23,),

                        CustomTextField(
                          key: const Key('email'),
                          formControlName: 'email',
                          titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          titleText:context.t.strings.form.forgot_pass_email.label,
                          labelText: context.t.strings.form.forgot_pass_email.hint,
                          hintText: context.t.strings.form.forgot_pass_email.hint,
                          isRequired: true,
                        ),

                        SizedBox(height: getDynamicHeight(context, 43),),

                        ReactiveFormConsumer(
                          builder: (context, formGroup, child) => CustomButton(
                            controller: _btnController,
                            width: getSize(context).width,
                            text: context.t.strings.forgot_password.text_update_password,
                            onPressed: (forgotPassForm.valid)
                                ? clickUpdatePass
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clickUpdatePass() {
    context.router.push(const ForgotPasswordSuccessScreenRoute());
  }
}