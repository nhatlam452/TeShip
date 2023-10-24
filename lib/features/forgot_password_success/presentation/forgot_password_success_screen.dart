import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/constants.dart';
import '../../../utils/methods/shortcuts.dart';
import '../../app/widgets/utils/keyboard_dismisser.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:auto_route/auto_route.dart';


class ForgotPasswordSuccessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisserWidget(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: getDynamicHeight(context, 190),),
                  SvgPicture.asset(
                      'assets/images/dashboard/ic_check_done_blue.svg',
                    width: 130,
                    height: 130,
                  ),
                  SizedBox(height: getDynamicHeight(context, 30),),
                  SizedBox(
                    width: getSize(context).width - 48,
                    child: Text(
                      context.t.strings.forgot_password.text_message_check_email,
                      style: getTextStyle(context, CustomTextStyle.title1SemiBold24),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: getDynamicHeight(context, 99),),
                  TextButton(
                      onPressed: () {
                        context.router.popUntilRouteWithName('LoginScreenRoute');
                      },
                      child: Container(
                        width: getSize(context).width - 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: $constants.theme.defaultThemeColor, // Set the border color here
                            width: 1, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            context.t.strings.forgot_password.text_back_to_main_screen,
                            textAlign: TextAlign.center,
                            style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
                          ),
                        ),
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