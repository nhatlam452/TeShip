// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_txt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataTXT _$DataTXTFromJson(Map<String, dynamic> json) {
  return _DataTXT.fromJson(json);
}

/// @nodoc
mixin _$DataTXT {
  String get placeholder => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isTrue => throw _privateConstructorUsedError;
  String get errorMSG => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTXTCopyWith<DataTXT> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTXTCopyWith<$Res> {
  factory $DataTXTCopyWith(DataTXT value, $Res Function(DataTXT) then) =
      _$DataTXTCopyWithImpl<$Res, DataTXT>;
  @useResult
  $Res call({String placeholder, String content, bool isTrue, String errorMSG});
}

/// @nodoc
class _$DataTXTCopyWithImpl<$Res, $Val extends DataTXT>
    implements $DataTXTCopyWith<$Res> {
  _$DataTXTCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? content = null,
    Object? isTrue = null,
    Object? errorMSG = null,
  }) {
    return _then(_value.copyWith(
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMSG: null == errorMSG
          ? _value.errorMSG
          : errorMSG // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTXTCopyWith<$Res> implements $DataTXTCopyWith<$Res> {
  factory _$$_DataTXTCopyWith(
          _$_DataTXT value, $Res Function(_$_DataTXT) then) =
      __$$_DataTXTCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeholder, String content, bool isTrue, String errorMSG});
}

/// @nodoc
class __$$_DataTXTCopyWithImpl<$Res>
    extends _$DataTXTCopyWithImpl<$Res, _$_DataTXT>
    implements _$$_DataTXTCopyWith<$Res> {
  __$$_DataTXTCopyWithImpl(_$_DataTXT _value, $Res Function(_$_DataTXT) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? content = null,
    Object? isTrue = null,
    Object? errorMSG = null,
  }) {
    return _then(_$_DataTXT(
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMSG: null == errorMSG
          ? _value.errorMSG
          : errorMSG // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataTXT with DiagnosticableTreeMixin implements _DataTXT {
  const _$_DataTXT(
      {required this.placeholder,
      required this.content,
      required this.isTrue,
      required this.errorMSG});

  factory _$_DataTXT.fromJson(Map<String, dynamic> json) =>
      _$$_DataTXTFromJson(json);

  @override
  final String placeholder;
  @override
  final String content;
  @override
  final bool isTrue;
  @override
  final String errorMSG;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataTXT(placeholder: $placeholder, content: $content, isTrue: $isTrue, errorMSG: $errorMSG)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataTXT'))
      ..add(DiagnosticsProperty('placeholder', placeholder))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('isTrue', isTrue))
      ..add(DiagnosticsProperty('errorMSG', errorMSG));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTXT &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue) &&
            (identical(other.errorMSG, errorMSG) ||
                other.errorMSG == errorMSG));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeholder, content, isTrue, errorMSG);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTXTCopyWith<_$_DataTXT> get copyWith =>
      __$$_DataTXTCopyWithImpl<_$_DataTXT>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTXTToJson(
      this,
    );
  }
}

abstract class _DataTXT implements DataTXT {
  const factory _DataTXT(
      {required final String placeholder,
      required final String content,
      required final bool isTrue,
      required final String errorMSG}) = _$_DataTXT;

  factory _DataTXT.fromJson(Map<String, dynamic> json) = _$_DataTXT.fromJson;

  @override
  String get placeholder;
  @override
  String get content;
  @override
  bool get isTrue;
  @override
  String get errorMSG;
  @override
  @JsonKey(ignore: true)
  _$$_DataTXTCopyWith<_$_DataTXT> get copyWith =>
      throw _privateConstructorUsedError;
}
