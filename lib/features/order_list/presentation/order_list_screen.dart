import 'dart:async';

import 'package:flutter/material.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/order_list/controller/store_list_controller.dart';
import 'package:teship/features/order_list/models/order_list_data_extension.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';
import 'package:teship/features/order_list/presentation/components/order_button_view.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../modules/dependency_injection/di.dart';
import '../../../../utils/methods/shortcuts.dart';
import '../../order_detail/presentation/details_order_screen.dart';
import '../../report/presentation/components/report_button_view.dart';
import '../blocs/get_order_list_cubit.dart';
import 'components/order_item_view.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({
    super.key,
    this.storeId,
    this.onMoveToDetail,
    this.onBackToList
  });

  final String? storeId;
  final Function()? onMoveToDetail;
  final Function()? onBackToList;

  @override
  State<OrderListScreen> createState() => OrderListScreenState();
}

class OrderListScreenState extends State<OrderListScreen> {
  Completer<void> refreshCompleter = Completer<void>();
  OrderShipStatusCode orderShipStatusCode = OrderShipStatusCode.WAITING;

  final GetOrderListCubit cubit = getIt<GetOrderListCubit>();

  String storeId = '';
  var greeting = "";
  late DateTime? selectedDate;
  var _isDetailScreen = false;
  OrderResponse? _detailsOrderModel;

  List<OrderResponse> allData = [];
  List<OrderResponse> currentData = [];

  @override
  initState() {
    initData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return cubit..getOrders(detailStoreId: widget.storeId);
      },
      child: BlocConsumer<GetOrderListCubit, GetOrderListState>(
        listener: (_, state) {
          state.whenOrNull(
            refresh: onClickReload,
          );
        },
        builder: (_, state) {
          return state.when(
            failed: defaultErrorView,
            initial: Container.new,
            success: contentOrderListView,// SET THIS
            refresh: Container.new,
            loading: loaderView,
          );
        },
      ),
    );
  }

  Widget contentOrderListView(OrderListResponse orders) {
    // setState(() {
      allData = orders.data?.orders ?? [];
      currentData = allData.getAllOrderListFrom(selectedDate,orderShipStatusCode.getRequestText().toLowerCase());
    // });

    return Scaffold(
      body: SizedBox(
        width: getSize(context).width,
        height: getSize(context).height,
        child: Visibility(
          visible: !_isDetailScreen,
          replacement: DetailsOrderScreen(id: _detailsOrderModel?.sId ?? '',
            onBackToShopListOrder: (){
              setState(() {
                _isDetailScreen = false;
                onClickReload();
              });
              if (widget.onBackToList != null){
                widget.onBackToList!();
              }
            },
            onRemoveOrder: (orderID) {
              setState(() {
                _isDetailScreen = false;
                onClickReload();
              });
              if (widget.onBackToList != null){
                widget.onBackToList!();
              }
            },
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                toolbarView(),
                listView(),
              ],
            ),
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
          Visibility(
              visible: (widget.storeId == null) || (widget.storeId == ''),
              child: Row(
                children: [
                  Text(
                    greeting,
                    style: getTextStyle(context, CustomTextStyle.title1SemiBold24),
                  ),
                ],
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: getSize(context).width,
              height: getDynamicHeight(context, 60),
              child:  ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: OrderShipStatusCode.values.length,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: EdgeInsets.only(
                    right: getDynamicWidth(context, 20),
                  ),
                  child: OrderButtonView(
                    onClickItem: () {
                      onChangeReportType(index);
                    },
                    isChoose: orderShipStatusCode == OrderShipStatusCode.values[index],
                    reportType: OrderShipStatusCode.values[index],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  selectDate(context);
                },
                child: Row(
                  children: [
                    Text(
                      selectedDate?.toDDMMYYYYString() ?? "Selected date",
                      textAlign: TextAlign.start,
                      style:
                      getTextStyle(context, CustomTextStyle.subtitle2Medium16),
                    ),
                    const SizedBox(width: 8,),
                    SvgPicture.asset('assets/images/dashboard/ic_dropdown_green.svg'),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: onClickReload,
                  child: SvgPicture.asset(
                    'assets/images/dashboard/ic_reload_green.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
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
                    onTap: () {
                      setState(() {
                        _detailsOrderModel = currentData[index];
                        if(_detailsOrderModel?.sId != null){
                          _isDetailScreen = true;
                          if (widget.onMoveToDetail != null){
                            widget.onMoveToDetail!();
                          }
                        }
                      });
                    },
                    child: ShopOrderItemView(
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
