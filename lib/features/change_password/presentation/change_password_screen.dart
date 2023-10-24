import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:teship/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:teship/features/change_info/form/change_info_form.dart';
import 'package:teship/features/change_password/blocs/change_password_cubit.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:auto_route/auto_route.dart';

import '../../../modules/dependency_injection/di.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../utils/helpers/bar_helper.dart';
import '../../app/blocs/app_cubit.dart';
import '../../app/models/alert_model.dart';
import '../../app/widgets/bar/bar.dart';
import '../../app/widgets/customs/base_alert_dialog.dart';
import '../../app/widgets/customs/custom_button.dart';
import '../../app/widgets/customs/custom_textfield.dart';
import '../form/change_password_form.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<StatefulWidget> createState() => ChangePasswordScreenState();
}

class ChangePasswordScreenState extends State<ChangePasswordScreen>{
  final ChangePasswordCubit cubit = getIt<ChangePasswordCubit>();
  late final FormGroup changePassLocalForm;
  String get currentPass => changePassLocalForm.control('current_pass').value.toString();
  String get newPass => changePassLocalForm.control('new_pass').value.toString();
  String get repeatPass => changePassLocalForm.control('repeat_pass').value.toString();

  late RoundedLoadingButtonController _btnController;

  @override
  void initState() {
    _btnController = RoundedLoadingButtonController();
    changePassLocalForm = changePassForm;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context) => cubit,
        child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
            bloc: cubit,
            listener: (context, state) {
              state.maybeWhen(
                loading: () {
                  changePassLocalForm
                    ..unfocus()
                    ..markAsDisabled();
                  _btnController.start();
                },
                failed: (alert) {
                  changePassLocalForm.markAsEnabled();
                  _btnController.reset();

                  BarHelper.showAlert(
                    context,
                    alert: alert,
                    isTest: false,
                  );
                },
                success: (_) {
                  changePassLocalForm
                    ..reset()
                    ..markAsEnabled();
                  _btnController.reset();

                  if (cubit != null) {
                    context.router.popUntilRouteWithName('AppNavigatorRoute');
                    getIt<AppCubit>().changePageIndex(index: 0);
                    BarHelper.showAlert(
                      context,
                      barPosition: BarPosition.top,
                      alert: AlertModel.alert(
                        message: context.t.strings.change_info.text_update_success,
                        type: AlertType.constructive,
                      ),
                      isTest: false,
                    );
                  }
                },
                orElse: () {
                  changePassLocalForm.markAsEnabled();
                  _btnController.reset();
                },
              );
            },
          child: contentChangePassView(context),
        ),
    );
  }

  Widget contentChangePassView(BuildContext context){
    return KeyboardDismisserWidget(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: Text(context.t.strings.setting.text_change_password,
            style: getTextStyle(context, CustomTextStyle.title1SemiBold24),),
        ),
        body: SingleChildScrollView(
          child: ReactiveForm(
            formGroup: changePassLocalForm,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                  child: CustomTextField(
                    key: const Key('current_pass'),
                    formControlName: 'current_pass',
                    titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    titleText:context.t.strings.form.current_pass.label,
                    labelText: context.t.strings.form.current_pass.hint,
                    hintText: context.t.strings.form.current_pass.hint,
                    isRequired: true,
                    isPassword: true,
                    onSubmitted: (_) {
                      print("DEBUG: current_pass: $currentPass");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                  child: CustomTextField(
                    key: const Key('new_pass'),
                    formControlName: 'new_pass',
                    titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    titleText:context.t.strings.form.new_pass.label,
                    labelText: context.t.strings.form.new_pass.hint,
                    hintText: context.t.strings.form.new_pass.hint,
                    isRequired: true,
                    isPassword: true,
                    onSubmitted: (_) {
                      print("DEBUG: new_pass: $newPass");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                  child: CustomTextField(
                    key: const Key('repeat_pass'),
                    formControlName: 'repeat_pass',
                    titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    titleText:context.t.strings.form.repeat_pass.label,
                    labelText: context.t.strings.form.repeat_pass.hint,
                    hintText: context.t.strings.form.repeat_pass.hint,
                    isRequired: true,
                    isPassword: true,
                    onSubmitted: (_) {
                      print("DEBUG: repeat_pass: $repeatPass");
                    },
                  ),
                ),
                SizedBox(
                  height: getDynamicHeight(context, 51),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ReactiveFormConsumer(
                    builder: (context, formGroup, child) => CustomButton(
                      controller: _btnController,
                      width: getSize(context).width,
                      text: context.t.strings.change_info.text_update,
                      onPressed: changePassLocalForm.valid
                          ? clickUpdate
                          : null,
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

  void clickUpdate() {
    if (repeatPass == newPass) {
      final baseDialog = BaseAlertDialog(
        content: context.t.strings.setting.text_message_update_password,
        yesOnPressed: () {
          Navigator.of(context, rootNavigator: true)
              .pop();
          cubit.changePass(currentPass, newPass);
        },
        cancelOnPressed: () {
          Navigator.of(context, rootNavigator: true)
              .pop();
        },
      );
      showDialog(context: context, builder: (BuildContext context) => baseDialog);

    }
    else {
      // changePassLocalForm
      final alert = AlertModel(message: "Mật khẩu không trùng khớp", type: AlertType.error);
      BarHelper.showAlert(
        context,
        alert: alert,
        isTest: false,
      );
    }
  }
}