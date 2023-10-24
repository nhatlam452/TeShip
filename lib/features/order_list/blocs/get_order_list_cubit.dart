
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/app/blocs/app_cubit.dart';
import 'package:teship/features/app/models/alert_model.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../utils/methods/shortcuts.dart';
import '../networking/order_list_repository.dart';

part 'get_order_list_cubit.freezed.dart';
part 'get_order_list_state.dart';

@injectable
class GetOrderListCubit extends Cubit<GetOrderListState> {
  GetOrderListCubit(this._orderListRepository)
      : super(const GetOrderListState.initial());

  final ShopOrderListRepository _orderListRepository;

  Future<void> getOrders({String? detailStoreId}) async {
    emit(const GetOrderListState.loading());
    final userInfo = await getUserInfo();
    final String? storeId;

    if (getIt<AppCubit>().state.isShopMode){
      storeId = userInfo?.storeId ?? '';
    }
    else {
      if (detailStoreId != null) {
        storeId = detailStoreId ?? '';
      }
      else {
        storeId = '';
      }
    }

    final response = await _orderListRepository.getOrders(storeId);

    response.pick(
      onError: (error) {
        if (error.message == ErrorCode.E_USER_AUTH) {
          emit(GetOrderListState.loading());
        }
        emit(GetOrderListState.failed(alert: error));
      },
      onData: (orders) {
        emit(GetOrderListState.success(orders: orders));
      },
    );
  }

  void refreshList() {
    emit(const GetOrderListState.refresh());
  }
}
