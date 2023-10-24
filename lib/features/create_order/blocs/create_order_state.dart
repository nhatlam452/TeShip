part of 'create_order_cubit.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.failed({required AlertModel alert}) = _CreateOrderStateFailed;

  const factory CreateOrderState.loading() = _CreateOrderLoadingState;

  const factory CreateOrderState.success({
    required BaseResponse response,
  }) = _CreateOrderStateSuccess;
}
