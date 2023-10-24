import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/store_list/controller/store_list_controller.dart';
import 'package:teship/features/store_list/blocs/store_list_cubit.dart';
import 'package:teship/features/store_list/models/store_response_extension.dart';
import 'package:teship/features/store_list/presentation/components/store_item_view.dart';
import 'package:teship/i18n/strings.g.dart';

import '../../../modules/dependency_injection/di.dart';
import '../../../utils/constants.dart';
import '../../../utils/methods/shortcuts.dart';
import '../../app/widgets/customs/base_alert_dialog.dart';
import '../../auth/login/blocs/auth_cubit.dart';

class StoreListScreen extends StatefulWidget {
  const StoreListScreen({
    super.key,
  });


  @override
  State<StoreListScreen> createState() => StoreListScreenState();
}

class StoreListScreenState extends State<StoreListScreen> {
  Completer<void> refreshCompleter = Completer<void>();
  final StoreListCubit cubit = getIt<StoreListCubit>();

  List<StoreModelResponse> currentData = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return cubit..getStores();
      },
      child: BlocConsumer<StoreListCubit, StoreListState>(
        listener: (_, state) {
          state.whenOrNull(
            refresh: onClickReload,
          );
        },
        builder: (_, state) {
          return state.when(
            failed: defaultErrorView,
            initial: Container.new,
            success: contentStoreListView,// SET THIS
            refresh: Container.new,
            loading: loaderView,
          );
        },
      ),
    );
  }

  Widget contentStoreListView(StoreListResponse storeListResponse) {
    currentData = storeListResponse.data.stores.getStoreNotBlocked();

    return Scaffold(
      body: SizedBox(
        width: getSize(context).width,
        height: getSize(context).height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              toolbarView(),
              listView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget toolbarView() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                context.t.strings.dashboard.manage_order,
                style: getTextStyle(context, CustomTextStyle.title1SemiBold24),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listView() {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.maxFinite,
          child: Visibility(
            visible: currentData.isNotEmpty,
            replacement: Column(
              children: [
                Image.asset('assets/images/dashboard/bg_empty_order.png'),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    context.t.strings.dashboard.text_msg_no_any_orders,
                    textAlign: TextAlign.center,
                    style:
                    getTextStyle(context, CustomTextStyle.title1SemiBold24),
                  ),
                ),
              ],
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: currentData.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: InkWell(
                    onTap: (){
                      onClickStore(currentData[index]);
                    },
                    child: StoreItemViewNew(
                      model: currentData[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}