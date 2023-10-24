import 'package:teship/features/app/blocs/app_cubit.dart';
import 'package:teship/features/store_list/presentation/store_list_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:teship/utils/router.gr.dart';

import '../../../data/responses/responses.dart';


extension ShopOrderListController on StoreListScreenState {
  void onClickReload() async {
    await cubit.getStores();
  }

  Future<void> onClickStore(StoreModelResponse storeItem) async {
    // final userInfoBox = await Hive.openBox('store');
    // userInfoBox.put('store_id', storeItem.id);
    // getIt<AppCubit>().changePageIndex(index: 1);
    context.router.push(StoreDetailScreenRoute(storeModel: storeItem));
  }
}