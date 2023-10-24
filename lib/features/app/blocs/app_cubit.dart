import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/utils/constants.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

@lazySingleton
class AppCubit extends HydratedCubit<AppState> {
  AppCubit() : super(AppState.initial());

  void changePageIndex({required int index}) => emit(
    state.copyWith(
      pageIndex: index,
    ),
  );

  void changeMode({required bool isShopMode}) {
    emit(state.copyWith(isShopMode: isShopMode));
  }

  bool getShopModel() {
    return state.isShopMode;
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState(pageIndex: 0, isShopMode: true);
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return {
      'index': state.pageIndex,
      'shop_mode': state.isShopMode,
    };
  }
}
