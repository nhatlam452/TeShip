import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'data_txt.freezed.dart';
part 'data_txt.g.dart';

@freezed
class DataTXT with _$DataTXT {
  const factory DataTXT({
    required String placeholder,
    required String content,
    required bool isTrue,
    required String errorMSG,

  }) = _DataTXT;

  factory DataTXT.initial() => const DataTXT(
    placeholder: '',
    content: '',
    isTrue: true,
    errorMSG: '',
  );

  factory DataTXT.fromJson(Map<String, dynamic> json) => _$DataTXTFromJson(json);
}
