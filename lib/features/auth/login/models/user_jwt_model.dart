import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/features/auth/login/models/user_payload_jwt_model.dart';

part 'user_jwt_model.freezed.dart';
part 'user_jwt_model.g.dart';

@freezed
class UserJWTModel with _$UserJWTModel {
  const factory UserJWTModel({
    required Payload payload,
    required int iat
  }) = _UserJWTModel;

  factory UserJWTModel.initial() => UserJWTModel(
      payload: Payload.initial(),
      iat: 0,
  );

  factory UserJWTModel.fromJson(Map<String, dynamic> json) => _$UserJWTModelFromJson(json);
}
