

part of 'get_order_list_cubit.dart';

@freezed
class GetOrderListState with _$GetOrderListState {
  const factory GetOrderListState.failed({required AlertModel alert}) = _GetOrderListStateFailed;

  const factory GetOrderListState.initial() = _GetOrderListStateInitial;

  const factory GetOrderListState.success({
    required OrderListResponse orders,
  }) = _GetOrderListStateSuccess;

  const factory GetOrderListState.refresh() = _GetOrderListStateRefresh;

  const factory GetOrderListState.loading() = _GetOrderListStateLoading;
}
