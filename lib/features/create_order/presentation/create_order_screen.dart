import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:teship/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:teship/features/create_order/controller/create_order_controller.dart';
import 'package:teship/features/create_order/form/create_order_form.dart';
import 'package:teship/features/create_order/models/list_info_order_view_model_extension.dart';
import 'package:teship/features/create_order/models/order_model.dart';
import 'package:teship/features/create_order/models/step_create_order.dart';
import 'package:teship/features/create_order/presentation/components/info_order_view/info_order_view.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../../../data/responses/responses.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../utils/constants.dart';
import '../../../utils/helpers/bar_helper.dart';
import '../../app/blocs/app_cubit.dart';
import '../../app/models/alert_model.dart';
import '../../app/widgets/customs/currency_textinput_formatter.dart';
import '../../app/widgets/customs/custom_button.dart';
import '../../app/widgets/customs/custom_textfield.dart';
import '../blocs/create_order_cubit.dart';
import 'components/info_customer_view.dart';
import 'components/info_order_view/models/info_order_view_model.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({
    super.key,
    @visibleForTesting this.infoCustomerForm,
    @visibleForTesting this.deliveryChargesForm,
  });

  final FormGroup? infoCustomerForm;
  final FormGroup? deliveryChargesForm;

  @override
  State<CreateOrderScreen> createState() => CreateOrderScreenState();
}

class CreateOrderScreenState extends State<CreateOrderScreen>{
  final CreateOrderCubit cubit = getIt<CreateOrderCubit>();

  late RoundedLoadingButtonController _btnController;

  late final FormGroup? infoCustomerForm;

  List<InfoOrderViewModel> listInfoProductForm = [
    InfoOrderViewModel(
      infoProductCreateOrderForm,
      1,
    ),
  ];

  late FormGroup deliveryChargesForm;
  OrderModel? modelRequest;
  late StepCreateOrder currentStep;
  String get deliveryCharges => deliveryChargesCreateOrderForm.control('delivery_charges').value.toString();
  OrderType? orderType;

  @override
  initState() {
    currentStep = StepCreateOrder.infoCustomer;
    _btnController = RoundedLoadingButtonController();
    infoCustomerForm = widget.infoCustomerForm ?? infoCustomerCreateOrderForm;
    deliveryChargesForm = widget.deliveryChargesForm ?? deliveryChargesCreateOrderForm;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocListener<CreateOrderCubit, CreateOrderState>(
        bloc: cubit,
        listener: (context, state) {
          state.maybeWhen(
            loading: () {
              _btnController.start();
            },
            failed: (alert) {
              _btnController.reset();

              BarHelper.showAlert(
                context,
                alert: alert,
                isTest: cubit != null,
              );
            },
            success: (_) {
              _btnController.reset();

              if (cubit != null) {
                getIt<AppCubit>().changePageIndex(index: 0);
                BarHelper.showAlert(
                  context,
                  alert: AlertModel.alert(
                    message: context.t.strings.create_order.text_create_order_success,
                    type: AlertType.constructive,
                  ),
                  isTest: false,
                );
              }
            },
            orElse: () {
              _btnController.reset();
            },
          );
        },
        child: KeyboardDismisserWidget(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.only(top: 16, bottom: 16, left: 20),
                    child: Text(
                      (currentStep == StepCreateOrder.infoCustomer) ?
                      context.t.strings.create_order.text_information_customer :
                      context.t.strings.create_order.text_information_order,
                      style: getTextStyle(context, CustomTextStyle.heading2Bold32).apply(
                        color: $constants.theme.defaultThemeColor,
                      ),
                    ),
                  ),

                  SizedBox(height: getDynamicHeight(context, 20),),

                  Visibility(
                    visible: currentStep == StepCreateOrder.infoCustomer,
                    replacement: InfoOrderCreateOrderView(
                      listInfoProductForm: listInfoProductForm,
                      onChangeQuantity: onChangeQuantity,
                    ),
                    child: InfoCustomerCreateOrderView(
                      infoCustomerForm: infoCustomerForm ?? infoCustomerCreateOrderForm,
                      clickContinue: clickContinue,
                    ),
                  ),

                  Visibility(
                    visible: currentStep == StepCreateOrder.infoOrder,
                    child: Column(
                      children: [
                        SizedBox(height: getDynamicHeight(context, 35)),

                        ReactiveForm(formGroup: deliveryChargesForm,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              children: [
                                CustomTextField(
                                  key: const Key('delivery_charges'),
                                  formControlName: 'delivery_charges',
                                  titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    CurrencyTextInputFormatter(),
                                  ],
                                  textInputAction: TextInputAction.next,
                                  titleText:context.t.strings.form.delivery_charges.label,
                                  labelText: context.t.strings.form.delivery_charges.hint,
                                  hintText: context.t.strings.form.delivery_charges.hint,
                                  isRequired: true,
                                ),

                                const SizedBox(height: 23,),

                                SizedBox(
                                  width: getSize(context).width - 40,
                                  child: Text(
                                    context.t.strings.create_order.text_price,
                                    style: getTextStyle(context, CustomTextStyle.heading4Bold20),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        context.t.strings.create_order.text_total_price,
                                        style: getTextStyle(context, CustomTextStyle.body1Regular16),
                                      ),
                                      Spacer(),

                                      Text(
                                        listInfoProductForm.getTotalPriceInList().formatCurrencyNoVND(),
                                        style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        context.t.strings.create_order.text_delivery_charges,
                                        style: getTextStyle(context, CustomTextStyle.body1Regular16),
                                      ),
                                      Spacer(),

                                      Text(
                                        deliveryChargesForm.getDoubleValue('delivery_charges').formatCurrencyNoVND(),
                                        style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                    bottom: 16,
                                  ),
                                  child: getLineDivider(getSize(context).width - 40),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: SizedBox(
                                    width: getSize(context).width - 40,
                                    child: Text(
                                      (listInfoProductForm.getTotalPriceInList() + deliveryChargesForm.getDoubleValue('delivery_charges')).formatCurrency(),
                                      style: getTextStyle(context, CustomTextStyle.heading4Bold20),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ),
                                SizedBox(height: getDynamicHeight(context, 36),),
                                //choose Transfer type
                                Row(
                                  children: [
                                    SizedBox(
                                      width: getDynamicWidth(context, 200),
                                      height: 50,
                                      child: RadioListTile<OrderType>(
                                        title: Text(
                                          OrderType.NORMAL.displayText,
                                          style: getTextStyle(context, CustomTextStyle.body1Regular16),
                                        ),
                                        contentPadding: EdgeInsets.zero,
                                        controlAffinity: ListTileControlAffinity.leading,
                                        value: OrderType.NORMAL,
                                        groupValue: orderType,
                                        onChanged: (value) {
                                          setState(() {
                                            orderType = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      width: getDynamicWidth(context, 160),
                                      height: 50,
                                      child: RadioListTile<OrderType>(
                                        title: Text(
                                          OrderType.EXPRESS.displayText,
                                          style: getTextStyle(context, CustomTextStyle.body1Regular16),
                                        ),
                                        contentPadding: EdgeInsets.zero,
                                        controlAffinity: ListTileControlAffinity.leading,
                                        value: OrderType.EXPRESS,
                                        groupValue: orderType,
                                        onChanged: (value) {
                                          setState(() {
                                            orderType = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getDynamicHeight(context, 48),),
                                ReactiveFormConsumer(
                                  builder: (context, formGroup, child) => CustomButton(
                                    controller: _btnController,
                                    width: getSize(context).width,
                                    text: context.t.strings.create_order.title,
                                    onPressed: (listInfoProductForm.isAllValid() && deliveryChargesForm.valid && (orderType != null))
                                        ? clickContinue
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

