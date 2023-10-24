import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:teship/features/app/widgets/customs/custom_button.dart';
import 'package:teship/features/app/widgets/customs/custom_textfield.dart';
import 'package:teship/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:teship/features/order_detail/controller/order_details_controller.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../../../../data/responses/responses.dart';
import '../../../../modules/dependency_injection/di.dart';
import '../../app/blocs/app_cubit.dart';
import '../../app/widgets/customs/base_alert_dialog.dart';
import '../../app/widgets/customs/currency_textinput_formatter.dart';
import '../blocs/get_order_details_cubit.dart';
import '../form/detail_order_form.dart';
import 'components/details_item_info_view.dart';

class DetailsOrderScreen extends StatefulWidget {
  const DetailsOrderScreen({
    super.key,
    required this.id,
    required this.onBackToShopListOrder,
    required this.onRemoveOrder,
  });

  final void Function() onBackToShopListOrder;
  final void Function(String) onRemoveOrder;

  final String id;

  @override
  State<DetailsOrderScreen> createState() => DetailsOrderScreenState();
}

class DetailsOrderScreenState extends State<DetailsOrderScreen> {
  Completer<void> refreshCompleter = Completer<void>();
  final GetOrderDetailsCubit cubit = getIt<GetOrderDetailsCubit>();
  late RoundedLoadingButtonController shopBtnController;
  late RoundedLoadingButtonController shipBtnController;
  OrderShipStatusCode? orderStatusCode;
  late FormGroup reasonShipForm;

  late OrderDetailsDataResponse detailsDataResponse;
  List<OrderShipStatusCode> orderShipAllValues = [];

  String get reason => reasonShipForm.control('reason').value.toString();

  String get pieceDeliveredAmount =>
      reasonShipForm.control('piece_delivered_amount').value.toString();

  @override
  void initState() {
    detailsDataResponse = OrderDetailsDataResponse.empty();
    shopBtnController = RoundedLoadingButtonController();
    shipBtnController = RoundedLoadingButtonController();
    reasonShipForm = notSuccessReasonDetailOrderForm;
    Future.microtask(() => cubit.getOrderDetail(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: RefreshIndicator(
        onRefresh: handleRefreshStart,
        child: BlocConsumer<GetOrderDetailsCubit, GetOrderDetailsShopState>(
          listener: (_, state) {
            state.whenOrNull(
              refresh: handleRefreshEnd,
              success: (response) {
                handleRefreshEnd();
                detailsDataResponse = response;
              },
              updateFailSuccess: updateFailSuccess,
              updateStatusSHIPSuccess: updateStatusSHIPSuccess,
            );
          },
          builder: (_, state) {
            return state.when(
              failed: (alert) => BaseAlertOneChoiceDialog(
                content: alert.message,
                cancelOnPressed: widget.onBackToShopListOrder,
              ),
              initial: Container.new,
              success: (orderDetailResponse) => contentDetailsView(),
              refresh: Container.new,
              loading: () => loaderView(),
              updateFailSuccess: (_) => contentDetailsView(),
              updateStatusSHIPSuccess: (_) => contentDetailsView(),
            );
          },
        ),
      ),
    );
  }

  Widget contentDetailsView() {
    final tempOrderShipAllValues =
        List<OrderShipStatusCode>.from(OrderShipStatusCode.values);
    tempOrderShipAllValues
        .removeWhere((element) => element == OrderShipStatusCode.CANCEL);
    orderShipAllValues = tempOrderShipAllValues;

    return KeyboardDismisserWidget(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            shadowColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //Custom Appbar
                Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(left: 8),
                      onPressed: widget.onBackToShopListOrder,
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: getSize(context).width - 100,
                      child: Text(
                        detailsDataResponse.orderCode ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: getTextStyle(
                            context, CustomTextStyle.title1SemiBold24),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title text
                      SizedBox(
                        width: getSize(context).width - 40,
                        child: Text(
                          context.t.strings.details_order.title,
                          style: getTextStyle(
                                  context, CustomTextStyle.heading2Bold32)
                              .apply(
                            color: $constants.theme.defaultThemeColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(
                        height: getDynamicHeight(context, 40),
                      ),
                      //Info Customer
                      infoCustomerView(detailsDataResponse),

                      //Info Order
                      infoOrderView(detailsDataResponse),

                      //Amount
                      totalAmountView(detailsDataResponse),

                      //Action Order
                      actionOrderSHOPView(detailsDataResponse),
                      Visibility(
                        visible: detailsDataResponse.status ==
                                OrderShipStatusCode.DELAY.getRequestText() ||
                            detailsDataResponse.status ==
                                OrderShipStatusCode.CANCEL.getRequestText() ||
                            detailsDataResponse.status ==
                                OrderShipStatusCode.PIECE_DELIVERED
                                    .getRequestText() ||
                            detailsDataResponse.status ==
                                OrderShipStatusCode.NOT_SUCCESS
                                    .getRequestText() ||
                            detailsDataResponse.status ==
                                OrderShipStatusCode.IN_PROGRESS
                                    .getRequestText(),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                getLineDivider(getSize(context).width - 40),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  width: getSize(context).width - 40,
                                  child: Text(
                                    "Trạng thái đơn hàng",
                                    style: getTextStyle(context,
                                        CustomTextStyle.heading5Bold16),
                                  ),
                                ),
                                DetailsItemInfoView(
                                  title: "Trạng thái",
                                  data: getOrderShipStatusCode(
                                          detailsDataResponse.status)
                                      .getText(context),
                                ),
                                DetailsItemInfoView(
                                    title: "Thông tin",
                                    data: detailsDataResponse.extract['message']
                                        .toString()),
                              ],
                            ),
                          ),
                        ),
                      ),

                      actionOrderSHIPView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget infoCustomerView(OrderDetailsDataResponse detailsDataResponse) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            width: getSize(context).width - 40,
            child: Text(
              context.t.strings.create_order.text_information_customer,
              style: getTextStyle(context, CustomTextStyle.heading5Bold16),
            ),
          ),
          DetailsItemInfoView(
              title: context.t.strings.form.full_name.label,
              data: detailsDataResponse.custName),
          DetailsItemInfoView(
            title: context.t.strings.form.phone.label,
            data: detailsDataResponse.custPhone,
            isPhone: true,
          ),
          DetailsItemInfoView(
              title: context.t.strings.details_order.address,
              data: detailsDataResponse.address),
          const SizedBox(
            height: 8,
          ),
          getLineDivider(getSize(context).width - 40),
        ],
      ),
    );
  }

  Widget infoOrderView(OrderDetailsDataResponse detailsDataResponse) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(height: 10),
          SizedBox(
            width: getSize(context).width - 40,
            child: Text(
              context.t.strings.create_order.text_information_order,
              style: getTextStyle(context, CustomTextStyle.heading5Bold16),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: detailsDataResponse.productList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  DetailsItemInfoView(
                      title: context.t.strings.form.product_name.label,
                      data: detailsDataResponse.productList[index].productName),
                  DetailsItemInfoView(
                      title: context.t.strings.create_order.text_quantity,
                      data: detailsDataResponse.productList[index].quantity
                          .toString()),
                  DetailsItemInfoView(
                      title: context.t.strings.form.unit_price.label,
                      data: detailsDataResponse.productList[index].productPrice
                          .formatCurrency()),
                  const SizedBox(
                    height: 8,
                  ),
                  getLineDivider(getSize(context).width - 40),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget totalAmountView(OrderDetailsDataResponse detailsDataResponse) {
    double totalProductListPrice = 0.0;
    detailsDataResponse.productList.forEach((element) {
      totalProductListPrice = totalProductListPrice + element.productPrice;
    });

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(height: 10),
          SizedBox(
            width: getSize(context).width - 40,
            child: Text(
              context.t.strings.create_order.text_price,
              style: getTextStyle(context, CustomTextStyle.heading5Bold16),
            ),
          ),
          DetailsItemInfoView(
              title: context.t.strings.create_order.text_total_price,
              data: totalProductListPrice.formatCurrency()),
          DetailsItemInfoView(
              title: context.t.strings.form.delivery_charges.label,
              data: detailsDataResponse.feeShip.formatCurrency()),
          DetailsItemInfoView(
              title: context.t.strings.details_order.total,
              data: (detailsDataResponse.totalAmount).formatCurrency()),
        ],
      ),
    );
  }

  Widget actionOrderSHOPView(OrderDetailsDataResponse detailsDataResponse) {
    return Visibility(
      visible: getIt<AppCubit>().state.isShopMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: getDynamicHeight(context, 48),
            ),
            CustomButton(
              controller: shopBtnController,
              width: getSize(context).width,
              text: getTextInButtonByStatus(detailsDataResponse.status),
              activeColor: getOrderShipStatusCode(detailsDataResponse.status) ==
                      OrderShipStatusCode.WAITING
                  ? Color(0xFFF5222D)
                  : $constants.theme.defaultThemeColor,
              onPressed: getOrderShipStatusCode(detailsDataResponse.status) ==
                      OrderShipStatusCode.WAITING
                  ? clickChangeStatusCANCEL
                  : null,
            ),
            SizedBox(
              height: getDynamicHeight(context, 28),
            ),
            Visibility(
              visible: getOrderShipStatusCode(detailsDataResponse.status) ==
                  OrderShipStatusCode.NOT_SUCCESS,
              child: DetailsItemInfoView(
                title: context.t.strings.details_order.text_reason,
                data: '${detailsDataResponse.extract['message'] ?? ''}',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget actionOrderSHIPView() {
    return ReactiveForm(
      formGroup: reasonShipForm,
      child: Visibility(
        visible: !getIt<AppCubit>().state.isShopMode,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              getLineDivider(getSize(context).width - 40),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: getSize(context).width - 40,
                child: Text(
                  context.t.strings.details_order.text_action_order,
                  textAlign: TextAlign.left,
                  style: getTextStyle(context, CustomTextStyle.heading5Bold16),
                ),
              ),
              Column(
                children: _buildRadioListTiles,
              ),
              ReactiveFormConsumer(
                builder: (context, formGroup, child) => CustomButton(
                  controller: shopBtnController,
                  width: getSize(context).width,
                  text: context.t.strings.create_order.text_continue,
                  onPressed: ((orderStatusCode != null &&
                              (orderStatusCode !=
                                      OrderShipStatusCode.NOT_SUCCESS &&
                                  orderStatusCode !=
                                      OrderShipStatusCode.PIECE_DELIVERED && orderStatusCode != OrderShipStatusCode.DELAY)) ||
                          ((orderStatusCode == OrderShipStatusCode.NOT_SUCCESS || orderStatusCode == OrderShipStatusCode.DELAY) &&
                              reason != '') ||
                          (orderStatusCode ==
                                  OrderShipStatusCode.PIECE_DELIVERED &&
                              pieceDeliveredAmount != ''))
                      ? clickValidateShip
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get _buildRadioListTiles => orderShipAllValues.map((status) {
        return Column(
          children: [
            RadioListTile<OrderShipStatusCode>(
              title: Text(
                status.getText(context),
                style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
              ),
              value: status,
              groupValue: orderStatusCode,
              onChanged: (value) {
                setState(() {
                  orderStatusCode = value;
                });
              },
              activeColor: $constants.theme.defaultThemeColor,
              contentPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Visibility(
              visible:
                  (orderStatusCode == OrderShipStatusCode.PIECE_DELIVERED) &&
                      status == OrderShipStatusCode.PIECE_DELIVERED,
              child: Padding(
                padding: EdgeInsets.only(left: getDynamicWidth(context, 64)),
                child: CustomTextField(
                  key: const Key('piece_delivered_amount'),
                  formControlName: 'piece_delivered_amount',
                  keyboardType: TextInputType.number,
                  titleText: '',
                  showErrors: false,
                  labelText: 0.formatCurrency(),
                  hintText: 0.formatCurrency(),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CurrencyTextInputFormatter(),
                  ],
                  minLength: 1,
                  maxLength: 200,
                  isRequired: true,
                ),
              ),
            ),
            Visibility(
              visible: (orderStatusCode == OrderShipStatusCode.NOT_SUCCESS) &&
                  status == OrderShipStatusCode.NOT_SUCCESS,
              child: Padding(
                padding: EdgeInsets.only(left: getDynamicWidth(context, 64)),
                child: CustomTextField(
                  key: const Key('reason'),
                  formControlName: 'reason',
                  keyboardType: TextInputType.text,
                  titleText: '',
                  showErrors: false,
                  labelText: context.t.strings.form.reason_ship_fail.hint,
                  hintText: context.t.strings.form.reason_ship_fail.hint,
                  minLength: 1,
                  maxLength: 200,
                  isRequired: true,
                ),
              ),
            ),
            Visibility(
              visible: (orderStatusCode == OrderShipStatusCode.DELAY) &&
                  status == OrderShipStatusCode.DELAY,
              child: Padding(
                padding: EdgeInsets.only(left: getDynamicWidth(context, 64)),
                child: CustomTextField(
                  key: const Key('reason'),
                  formControlName: 'reason',
                  keyboardType: TextInputType.text,
                  titleText: '',
                  showErrors: false,
                  labelText: context.t.strings.form.reason_ship_fail.hint,
                  hintText: context.t.strings.form.reason_ship_fail.hint,
                  minLength: 1,
                  maxLength: 200,
                  isRequired: true,
                ),
              ),
            ),
          ],
        );
      }).toList();
}
