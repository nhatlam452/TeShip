import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.controller,
    required this.text,
    this.onPressed,
    this.resetAfterDuration = false,
    this.animateOnTap = false,
    this.width = 300,
    this.height = 44,
    this.activeColor = const Color(0xFF008c8c),
  });

  final RoundedLoadingButtonController controller;
  final String text;
  final void Function()? onPressed;
  final bool resetAfterDuration;
  final bool animateOnTap;
  final double width;
  final double height;
  final Color activeColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return RoundedLoadingButton(
      elevation: $constants.theme.defaultElevation,
      width: widget.width,
      height: widget.height,
      borderRadius: $constants.theme.defaultBorderRadius,
      color: widget.onPressed != null ? widget.activeColor : $constants.theme.defaultColorDisable,
      controller: widget.controller,
      onPressed: widget.onPressed,
      valueColor: getTheme(context).primary,
      resetAfterDuration: widget.resetAfterDuration,
      animateOnTap: widget.animateOnTap,
      child: AutoSizeText(
        widget.text,
        style: getTextStyle(context, CustomTextStyle.subtitle2Medium16).apply(color: Colors.white),
      ),
    );
  }
}
