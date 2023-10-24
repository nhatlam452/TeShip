import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';

class SettingItemView extends StatelessWidget {
  const SettingItemView({super.key,
    required this.iconPath,
    required this.title,
    required this.onClickItem,
    this.haveBottomLine = false
  });

  final String iconPath;
  final String title;
  final bool? haveBottomLine;
  final void Function() onClickItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getDynamicHeight(context, 57),
      child: Column(
        children: [
          GestureDetector(
            onTap: onClickItem,
            child: Row(
              children: [
                SvgPicture.asset(iconPath),
                SizedBox(width: 13,),
                Text(title,
                  style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
                ),

                Spacer(),
                SvgPicture.asset('assets/images/dashboard/ic_right.svg'),
              ],
            ),
          ),
          Visibility(
            visible: haveBottomLine ?? false,
            child: Column(
              children: [
                SizedBox(height: 16,),
                Padding(padding: EdgeInsets.only(
                  left: getDynamicWidth(context, 40),
                  ),
                  child: Container(
                    width: getSize(context).width - 80,
                    height: 0.5,
                    color: $constants.theme.defaultColorDisable,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}