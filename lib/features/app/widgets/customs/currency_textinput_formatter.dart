import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:teship/utils/methods/shortcuts.dart';

class CurrencyTextInputFormatter extends TextInputFormatter {

  CurrencyTextInputFormatter({this.locale = 'en_US', this.symbol = ','});
  final String locale;
  final String symbol;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue,) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    double value = double.parse(newValue.text);

    String newText = value.formatCurrencyNoVND();

    return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length));
  }
}