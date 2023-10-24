import '../../../data/responses/responses.dart';

extension StoreListResponseExtension on List<StoreModelResponse>?{
  List<StoreModelResponse> getStoreNotBlocked() {
    return this == null ? [] : this!.where((element) => element.status != StoreStatus.BLOCKED).toList();
  }
}