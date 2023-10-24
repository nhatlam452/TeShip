import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:styled_text/styled_text.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.formControlName,
    this.validationMessages,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.hasCounter = false,
    this.titleCustomTextStyle = CustomTextStyle.body1Regular16,
    this.titleText = '',
    this.hintText = '',
    this.labelText = '',
    this.extraInfo = '',
    this.maxLines = 1,
    this.minLines,
    this.minLength,
    this.maxLength,
    this.isRequired = false,
    this.inputFormatters,
    this.suffixIcon,
    this.onTap,
    this.autofocus = false,
    this.isPassword = false,
    this.readOnly = false,
    this.staticValue = '',
    this.showErrors = true,
    this.obscureText = false,
    this.textInputAction,
    this.onSubmitted,
  }) : assert(
  !hasCounter || maxLength != null,
  'Max length must be provided when counter is active.',
  );

  final Map<String, String> Function(FormControl<Object?>)? validationMessages;
  final String extraInfo;
  final String formControlName;
  final bool hasCounter;
  final CustomTextStyle titleCustomTextStyle;
  final String titleText;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final bool isRequired;
  final TextInputType? keyboardType;
  final String labelText;
  final int? maxLength;
  final int? maxLines;
  final int? minLength;
  final int? minLines;
  final void Function(FormControl<Object?>)? onTap;
  final bool isPassword;
  final bool readOnly;
  final bool autofocus;
  final bool showErrors;
  final String staticValue;
  final Widget? suffixIcon;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final void Function(FormControl<Object?>)? onSubmitted;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible = widget.obscureText;
    _focusNode.addListener(() {
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  InputDecoration getTextFieldDecoration(FormGroup form) {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.pink),
        borderRadius: BorderRadius.all(Radius.circular($constants.theme.defaultBorderRadius)),
      ),
      filled: true,
      errorMaxLines: 2,
      fillColor: Colors.transparent,
      suffixIcon: widget.suffixIcon,
      suffixIconConstraints: const BoxConstraints(
        maxHeight: 50,
        maxWidth: 50,
      ),

      hintStyle: getTextStyle(context, CustomTextStyle.body1Regular16).apply(
          color: $constants.theme.defaultColorDisable,
      ),
      labelStyle: getTextStyle(context, CustomTextStyle.body1Regular16).apply(
        color: $constants.theme.defaultColorDisable,
      ),
      hintText: widget.hintText,
      labelText: widget.hintText,
      contentPadding: widget.hintText.isNotEmpty
          ? EdgeInsets.fromLTRB(
        $constants.insets.md - 4,
        $constants.insets.xs + 2,
        $constants.insets.lg + 4,
        $constants.insets.xs + 2,
      )
          : null,
    );
  }

  Widget? buildCounter(
      BuildContext context, {
        required int currentLength,
        int? maxLength,
      }) {
    return !widget.hasCounter
        ? const SizedBox()
        : Container(
            padding: const EdgeInsets.symmetric(
              vertical: 1.5,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(color: getCustomOnPrimaryColor(context).withOpacity(0.2)),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(32)),
            ),
            child: StyledText(
              text: '<bold>$currentLength</bold>/$maxLength',
              style: getTextTheme(context).caption,
              tags: {
                'bold': StyledTextTag(
                  style: getTextTheme(context).caption!.apply(
                    fontWeightDelta: 1,
                    color: widget.minLength != null && currentLength < widget.minLength!
                        ? $constants.palette.red.withOpacity(0.5)
                        : getTheme(context).primary,
                  ),
                ),
              },
      ),
    );
  }

  IconData getIcon(FormGroup form) {
    if (form.status != ControlStatus.disabled && !form.control(widget.formControlName).valid) {
      return MdiIcons.asterisk;
    }

    return MdiIcons.check;
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context, form, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: widget.titleText.isNotEmpty,
              child: Column(
                children: [
                  Text(
                    widget.titleText,
                    style: getTextStyle(context, widget.titleCustomTextStyle),
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: $constants.insets.xs),
                  child: Column(
                    children: [
                      ReactiveTextField(
                        autofocus: widget.autofocus,
                        showErrors: null,
                        readOnly: widget.readOnly,
                        obscureText: _passwordVisible,
                        onTap: widget.onTap,
                        formControlName: widget.formControlName,
                        validationMessages: widget.showErrors ?
                        {
                          ValidationMessage.minLength: (_) => Translations.of(context)
                              .strings
                              .errors
                              .form
                              .minLength(field: widget.titleText, count: widget.minLength.toString()),
                          ValidationMessage.maxLength: (_) => Translations.of(context)
                              .strings
                              .errors
                              .form
                              .maxLength(field: widget.titleText, count: widget.maxLength.toString()),
                          ValidationMessage.required: (_) => context.t.strings.errors.form.required(field: widget.titleText.toLowerCase()),
                          ValidationMessage.email: (_) => context.t.strings.errors.form.email,
                          ValidationMessage.pattern: (_) => context.t.strings.errors.form.pattern(field: widget.titleText),
                          ValidationMessage.mustMatch: (_) => context.t.strings.errors.form.pattern(field: widget.titleText),
                        } :
                        {
                          ValidationMessage.minLength: (_) => '',
                          ValidationMessage.maxLength: (_) => '',
                          ValidationMessage.required: (_) => '',
                          ValidationMessage.email: (_) => '',
                          ValidationMessage.pattern: (_) => '',
                        },
                        maxLength: widget.maxLength,
                        maxLines: widget.maxLines,
                        minLines: widget.minLines,
                        keyboardType: widget.keyboardType,
                        textCapitalization: widget.textCapitalization,
                        buildCounter: (context, {required int currentLength, required bool isFocused, int? maxLength}) {
                          return buildCounter(context, currentLength: currentLength, maxLength: maxLength);
                        },
                        style: getTextStyle(context, CustomTextStyle.body1Regular16),
                        decoration: getTextFieldDecoration(form),
                        inputFormatters: widget.inputFormatters,
                        textInputAction: widget.textInputAction,
                        focusNode: _focusNode,
                        onSubmitted: widget.onSubmitted,
                      ),
                      if (widget.extraInfo.isNotEmpty) ...{
                        Padding(
                          padding: EdgeInsets.only(
                            left: $constants.insets.xs,
                            top: $constants.insets.xs - 2,
                            bottom: $constants.insets.xs - 2,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                MdiIcons.information,
                                size: 16,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    widget.extraInfo,
                                    style: getTextTheme(context).caption!.copyWith(fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      },
                    ],
                  ),
                ),
                if (widget.isPassword) ...{
                  Positioned(
                    right: 0,
                    top: 0,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        child: Image.asset(_passwordVisible ? 'assets/images/auth/ic_eye_gray.png' : 'assets/images/auth/ic_eye_off_gray.png'),
                      ),
                    ),
                  ),
                },
              ],
            ),
          ],
        );
      },
    );
  }
}
