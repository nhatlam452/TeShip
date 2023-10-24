part of 'store_list_cubit.dart';

@freezed
class StoreListState with _$StoreListState {
  const factory StoreListState.failed({required AlertModel alert}) = _StoreListStateFailed;

  const factory StoreListState.initial() = _StoreListStateInitial;

  const factory StoreListState.success({
    required StoreListResponse response,
  }) = _StoreListStateSuccess;

  const factory StoreListState.refresh() = _StoreListStateRefresh;

  const factory StoreListState.loading() = _StoreListStateLoading;

}