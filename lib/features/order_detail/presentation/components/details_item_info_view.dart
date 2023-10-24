import 'package:flutter/material.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsItemInfoView extends StatelessWidget {
  const DetailsItemInfoView({
    super.key,
    required this.title,
    required this.data,
    this.isPhone,
  });

  final String title;
  final String data;
  final bool? isPhone;

  @override
  Widget build(BuildContext context) {
    final width = getSize(context).width - 40;

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          SizedBox(
            width: width * 0.38,
            child: Text(
              title,
              style: getTextStyle(context, CustomTextStyle.body1Regular16),
            ),
          ),

          Spacer(),

          Visibility(
            visible: isPhone == true,
            replacement: SizedBox(
              width: width * 0.57,
              child: Text(
                data,
                maxLines: 3,
                textAlign: TextAlign.right,
                style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
              ),
            ),
            child: TextButton(
              onPressed: (){
                final telLaunchUri = Uri(
                  scheme: 'tel',
                  path: data,
                );
                launchUrl(telLaunchUri);
              },
              child: Text(
                data,
                style: getTextStyle(context, CustomTextStyle.body2Regular14).apply(
                  color: $constants.theme.defaultThemeColor,
                  decoration: TextDecoration.underline,
                  decorationColor: $constants.theme.defaultThemeColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}