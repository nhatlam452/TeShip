import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teship/features/app/models/alert_model.dart';
import 'package:teship/features/app/widgets/customs/custom_button.dart';
import 'package:teship/features/app/widgets/customs/custom_textfield.dart';
import 'package:teship/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:teship/features/auth/login/blocs/auth_cubit.dart';
import 'package:teship/features/auth/login/form/login_form.dart';
import 'package:teship/features/auth/login/controller/login_controller.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/helpers/bar_helper.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:teship/utils/router.gr.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    @visibleForTesting this.cubit,
    @visibleForTesting this.form,
  });

  final AuthCubit? cubit;
  final FormGroup? form;

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  late RoundedLoadingButtonController _btnController;
  late FormGroup form;
  bool isCheckRemember = false;

  String get phone => form.control('phone').value.toString();
  String get password => form.control('password').value.toString();

  @override
  initState() {
    _btnController = RoundedLoadingButtonController();
    form = widget.form ?? loginForm;

    setDataExist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      bloc: widget.cubit ?? context.read<AuthCubit>(),
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            form
              ..unfocus()
              ..markAsDisabled();
            _btnController.start();
          },
          failed: (alert) {
            form.markAsEnabled();
            _btnController.reset();

            BarHelper.showAlert(
              context,
              alert: alert,
              isTest: widget.cubit != null,
            );
          },
          authenticated: (_) {
            form
              ..reset()
              ..markAsEnabled();
            _btnController.reset();

            if (widget.cubit != null) {
              BarHelper.showAlert(
                context,
                alert: AlertModel.alert(
                  message: context.t.strings.test.succeded,
                  type: AlertType.constructive,
                ),
                isTest: true,
              );
            }
          },
          orElse: () {
            form.markAsEnabled();
            _btnController.reset();
          },
        );
      },
      child: KeyboardDismisserWidget(
        child: ReactiveForm(
          formGroup: form,
          child: Scaffold(
            body:  SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50,),

                  Padding(padding: const EdgeInsets.only(top: 16, bottom: 16, left: 20),
                    child: Text(context.t.strings.login.text_login,
                      style: getTextStyle(context, CustomTextStyle.title2SemiBold20),
                    ),
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
                      'assets/images/auth/logo_login.png',
                      width: getDynamicWidth(context, 291),
                      height: getDynamicHeight(context, 291),
                    ),),
                  ),

                  SizedBox(height: getDynamicHeight(context, 20),),

                  // TextField phone, password, SignIn
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
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
                              key: const Key('password'),
                              formControlName: 'password',
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.send,
                              obscureText: true,
                              isPassword: true,
                              titleText:context.t.strings.form.password.label,
                              labelText: context.t.strings.form.password.hint,
                              hintText: context.t.strings.form.password.hint,
                              minLength: 1,
                              maxLength: 30,
                              isRequired: true,
                              onSubmitted: (_) {
                                clickLogin();
                              },
                            );
                          },
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                  setState(() {
                                    isCheckRemember = !isCheckRemember;
                                  });
                                },
                              child: Row(
                                children: [
                                  SvgPicture.asset(isCheckRemember ? 'assets/images/auth/ic_green_check.svg' : 'assets/images/auth/ic_green_uncheck.svg'),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      context.t.strings.login.text_rembember_pass,
                                      style: getTextStyle(context, CustomTextStyle.body1Regular16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),

                            TextButton(
                              onPressed: () {
                                context.router.push(ForgotPassScreenRoute());
                              },
                              child: Text(
                                context.t.strings.login.forgot_pass,
                                style: getTextStyle(context, CustomTextStyle.text1Italic16).apply(
                                  decoration: TextDecoration.underline,
                                  decorationColor: const Color(0xFF3827a4),
                                  color: const Color(0xFF3827a4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: getDynamicHeight(context, 35)),
                        ReactiveFormConsumer(
                          builder: (context, formGroup, child) => CustomButton(
                            controller: _btnController,
                            width: getSize(context).width,
                            text: context.t.strings.login.text_login,
                            onPressed: form.valid
                                ? clickLogin
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
