import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/data/responses/responses.dart';

part 'user_payload_jwt_model.freezed.dart';
part 'user_payload_jwt_model.g.dart';

@freezed
class Payload with _$Payload {
  const factory Payload({
    required String phone,
    required String email,
    required String store_id,
    required String store_code,
    required String name,
    required String address,
    required String permission,
  }) = _Payload;

  factory Payload.initial() => const Payload(
    phone: '',
    email: '',
    store_id: '',
    store_code: '',
    name: '',
    address: '',
    permission: '',
  );

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}
