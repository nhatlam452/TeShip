import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String phone,
    required String email,
    required String storeId,
    required String storeCode,
    required String name,
    required String address,
    required String permission,
  }) = _UserModel;

  factory UserModel.initial() => const UserModel(
      id: '',
      phone: '',
      email: '',
      storeId: '',
      storeCode: '',
      name: '',
      address: '',
      permission: '',
  );

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
