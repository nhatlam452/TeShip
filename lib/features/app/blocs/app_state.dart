part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required int pageIndex,
    required bool isShopMode,
  }) = _AppState;

  factory AppState.initial() => const _AppState(
    pageIndex: 0,
    isShopMode: true,
  );
}
