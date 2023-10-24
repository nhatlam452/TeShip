import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/features/create_order/models/order_model.dart';
import 'package:teship/features/create_order/networking/create_order_repository.dart';

import '../../../data/responses/responses.dart';
import '../../app/models/alert_model.dart';

part 'create_order_cubit.freezed.dart';
part 'create_order_state.dart';

@lazySingleton
class CreateOrderCubit extends Cubit<CreateOrderState> {
  CreateOrderCubit(this._createOrderRepository)
      : super(const CreateOrderState.loading());

  final CreateOrderRepository _createOrderRepository;

  Future<void> createOrder(OrderModel model) async {
    emit(const CreateOrderState.loading());

    final response = await _createOrderRepository.createOrder(request: model);

    response.pick(
      onError: (error) {
        emit(CreateOrderState.failed(alert: error));
      },
      onData: (response) {
        emit(CreateOrderState.success(response: response));
      },
    );
  }
}