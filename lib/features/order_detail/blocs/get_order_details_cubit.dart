import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/app/models/alert_model.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';
import 'package:teship/features/order_list/presentation/order_list_screen.dart';

import '../networking/order_details_repository.dart';

part 'get_order_details_cubit.freezed.dart';
part 'get_order_details_state.dart';

@lazySingleton
class GetOrderDetailsCubit extends Cubit<GetOrderDetailsShopState> {
  GetOrderDetailsCubit(this._orderDetailsRepository)
      : super(const GetOrderDetailsShopState.initial());

  final GetOrderDetailsRepository _orderDetailsRepository;

  Future<void> getOrderDetail(String id) async {
    emit(const GetOrderDetailsShopState.loading());

    final response = await _orderDetailsRepository.getData(id);

    response.pick(
      onError: (error) {
        emit(GetOrderDetailsShopState.failed(alert: error));
      },
      onData: (data) {
        emit(GetOrderDetailsShopState.success(data: data));
      },
    );
  }

  Future<void> updateOrder(String orderId) async {
    emit(const GetOrderDetailsShopState.loading());

    final response = await _orderDetailsRepository.updateFailOrder(orderId: orderId);

    response.pick(
      onError: (error) {
        emit(GetOrderDetailsShopState.failed(alert: error));
      },
      onData: (data) {
        emit(GetOrderDetailsShopState.updateFailSuccess(response: data));
      },
    );
  }

  Future<void> updateStatusSHIPOrder(String orderId, OrderShipStatusCode statusCode, String? message, double? totalAmount) async {
    emit(const GetOrderDetailsShopState.loading());

    final response = await _orderDetailsRepository.updateStatusSHIP(orderId: orderId, statusCode: statusCode, message: message, totalAmount: totalAmount);

    response.pick(
      onError: (error) {
        emit(GetOrderDetailsShopState.failed(alert: error));
      },
      onData: (data) {
        emit(GetOrderDetailsShopState.updateStatusSHIPSuccess(response: data));
      },
    );
  }

  void refreshList() {
    emit(const GetOrderDetailsShopState.refresh());
  }
}
