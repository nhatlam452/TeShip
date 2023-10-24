

part of 'get_order_details_cubit.dart';

@freezed
class GetOrderDetailsShopState with _$GetOrderDetailsShopState {
  const factory GetOrderDetailsShopState.failed({required AlertModel alert}) = _GetOrderDetailsShopStateFailed;

  const factory GetOrderDetailsShopState.initial() = _GetOrderDetailsShopStateInitial;

  const factory GetOrderDetailsShopState.success({
    required OrderDetailsDataResponse data,
  }) = _GetOrderDetailsShopStateSuccess;

  const factory GetOrderDetailsShopState.updateFailSuccess({
    required BaseResponse response,
  }) = _GetOrderDetailsShopUpdateStateFailSuccess;

  const factory GetOrderDetailsShopState.updateStatusSHIPSuccess({
    required BaseResponse response,
  }) = _GetOrderDetailsShopUpdateStatusSHIPSuccessSuccess;

  const factory GetOrderDetailsShopState.refresh() = _GetOrderDetailsShopStateRefresh;

  const factory GetOrderDetailsShopState.loading() = _GetOrderDetailsShopStateLoading;
}
