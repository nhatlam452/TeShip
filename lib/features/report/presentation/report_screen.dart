import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/app/blocs/app_cubit.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';
import 'package:teship/features/report/blocs/report_cubit.dart';
import 'package:teship/features/report/controller/report_controller.dart';
import 'package:teship/features/report/models/report_type.dart';
import 'package:teship/features/report/presentation/components/report_button_view.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:teship/utils/constants.dart';

import '../../../utils/methods/shortcuts.dart';
import '../../app/widgets/customs/base_alert_dialog.dart';
import '../../auth/login/blocs/auth_cubit.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<StatefulWidget> createState() => ReportScreenState();
}

class ReportScreenState extends State<ReportScreen> {
  Completer<void> refreshCompleter = Completer<void>();
  final ReportCubit cubit = getIt<ReportCubit>();
  ReportType reportDataType = ReportType.TODAY;
  late ReportDataResponse dataReport;

  // int numTotalOrder = 0;
  // int numWait = 0;
  // int numInProgress = 0;
  // int numSuccess = 0;
  // int numPieceSuccess = 0;
  // int numNotSuccess = 0;
  // int numCancel = 0;

  @override
  void initState() {
    // Future.microtask(() => ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit..getReportShop(reportDataType),
      child: RefreshIndicator(
        onRefresh: handleRefreshStart,
        child: BlocConsumer<ReportCubit, ReportState>(
          listener: (_, state) {
            state.whenOrNull(
              refresh: handleRefreshEnd,
              success: (response) {
                handleRefreshEnd();
                dataReport = response.data;
              },
            );
          },
          builder: (_, state) {
            return state.when(
              failed: defaultErrorView,
              success: (_) => contentReportView(context),
              refresh: Container.new,
              loading: () => loaderView(),
            );
          },
        ),
      ),
    );
  }

  Widget contentReportView(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: getSize(context).width,
        height: getSize(context).height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //button report type
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: getSize(context).width,
                      height: getDynamicHeight(context, 40),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: ReportType.values.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: EdgeInsets.only(
                            right: getDynamicWidth(context, 20),
                          ),
                          child: ReportButtonView(
                            onClickItem: () {
                              onChangeReportType(index);
                            },
                            isChoose:
                                reportDataType == ReportType.values[index],
                            reportType: ReportType.values[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getDynamicHeight(context, 44),
                  ),

                  //info
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              context.t.strings.report.text_total_order,
                              style: getTextStyle(
                                  context, CustomTextStyle.heading5Bold16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.totalOrder.toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.heading5Bold16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "${OrderShipStatusCode.WAITING.getText(context)}: ",
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.orderWait.toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "${OrderShipStatusCode.IN_PROGRESS.getText(context)}: ",
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.orderDelivering.toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "${OrderShipStatusCode.SUCCESS.getText(context)}: ",
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.orderSuccess.toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              '${context.t.strings.order_deliver.text_piece_delivered_long}: ',
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.orderPartialSuccess.toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "${OrderShipStatusCode.NOT_SUCCESS.getText(context)}: ",
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.orderFail.toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "${OrderShipStatusCode.CANCEL.getText(context)}: ",
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.orderCancel.toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              "${OrderShipStatusCode.DELAY.getText(context)}: ",
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                            Spacer(),
                            Text(
                              ((dataReport.totalOrder ?? 0) -
                                      (dataReport.orderWait ?? 0) -
                                      (dataReport.orderDelivering ?? 0) -
                                      (dataReport.orderSuccess ?? 0) -
                                      (dataReport.orderPartialSuccess ?? 0) -
                                      (dataReport.orderFail ?? 0) -
                                      (dataReport.orderCancel ?? 0))
                                  .toString(),
                              style: getTextStyle(
                                  context, CustomTextStyle.body1Regular16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        getLineDivider(getSize(context).width - 40,
                            height: 0.5),
                      ],
                    ),
                  ),

                  //revenue
                  Visibility(
                    visible: getIt<AppCubit>().state.isShopMode,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                context.t.strings.report.text_revenue,
                                style: getTextStyle(
                                    context, CustomTextStyle.heading5Bold16),
                              ),
                              Text(
                                "*",
                                style: getTextStyle(
                                        context, CustomTextStyle.heading5Bold16)
                                    .apply(
                                  color: Color(0xFFFF0000),
                                ),
                              ),
                              Spacer(),
                              Text(
                                dataReport.totalAmount
                                    .wrappedValue()
                                    .formatCurrencyNoVND(),
                                style: getTextStyle(
                                    context, CustomTextStyle.heading5Bold16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          getLineDivider(getSize(context).width - 40,
                              height: 0.5),
                        ],
                      ),
                    ),
                  ),

                  //total deliver fee
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              context.t.strings.report.text_total_ship_fee,
                              style: getTextStyle(
                                  context, CustomTextStyle.heading5Bold16),
                            ),
                            Spacer(),
                            Text(
                              dataReport.ship
                                  .wrappedValue()
                                  .formatCurrencyNoVND(),
                              style: getTextStyle(
                                  context, CustomTextStyle.heading5Bold16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //note
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: getSize(context).width - 50,
                child: Text.rich(
                  TextSpan(
                    text: '', // default text style
                    children: <TextSpan>[
                      TextSpan(
                        text: '*',
                        style: getTextStyle(
                                context, CustomTextStyle.heading5Bold16)
                            .apply(
                          color: Color(0xFFFF0000),
                        ),
                      ),
                      TextSpan(
                          text: context.t.strings.report.note,
                          style: getTextStyle(
                              context, CustomTextStyle.text1Italic16)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
