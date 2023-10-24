part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.failed({required AlertModel alert}) = _ChangePasswordStateFailed;

  const factory ChangePasswordState.loading() = _ChangePasswordLoadingState;

  const factory ChangePasswordState.success({
    required BaseResponse response,
  }) = _ChangePasswordStateSuccess;
}
