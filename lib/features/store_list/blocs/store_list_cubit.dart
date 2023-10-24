
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/app/models/alert_model.dart';
import '../../../utils/methods/shortcuts.dart';
import '../networking/store_list_repository.dart';

part 'store_list_cubit.freezed.dart';
part 'store_list_state.dart';

@injectable
class StoreListCubit extends Cubit<StoreListState> {
  StoreListCubit(this._storeListRepository)
      : super(const StoreListState.initial());

  final StoreListRepository _storeListRepository;

  Future<void> getStores() async {
    emit(const StoreListState.loading());

    final response = await _storeListRepository.getStores();

    response.pick(
      onError: (error) {
        emit(StoreListState.failed(alert: error));
      },
      onData: (response) {
        emit(StoreListState.success(response: response));
      },
    );
  }

  void refreshList() {
    emit(const StoreListState.refresh());
  }
}