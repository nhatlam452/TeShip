import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/features/create_order/models/order_model.dart';
import 'package:teship/features/create_order/networking/create_order_repository.dart';

import '../../../data/responses/responses.dart';
import '../../app/models/alert_model.dart';
import '../networking/change_password_repository.dart';

part 'change_password_cubit.freezed.dart';
part 'change_password_state.dart';

@lazySingleton
class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(this._changePasswordRepository)
      : super(const ChangePasswordState.loading());

  final ChangePasswordRepository _changePasswordRepository;

  Future<void> changePass(String oldPass, String newPass) async {
    emit(const ChangePasswordState.loading());

    final response = await _changePasswordRepository.changePass(oldPass: oldPass, newPass: newPass);

    response.pick(
      onError: (error) {
        emit(ChangePasswordState.failed(alert: error));
      },
      onData: (response) {
        emit(ChangePasswordState.success(response: response));
      },
    );
  }
}