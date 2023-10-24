import 'package:flutter/material.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/order_status_code.dart';

class ShopOrderItemView extends StatelessWidget {
  const ShopOrderItemView({super.key, required this.model});

  final OrderResponse model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(height: 8,),

              SizedBox(
                width: (getSize(context).width -  40) * 0.45,
                child: Text(
                  model.custName.wrappedValue(),
                  style: getTextStyle(context, CustomTextStyle.subtitle1Medium20),
                ),
              ),

              Spacer(),

              Text(
                model.totalAmount.wrappedValue().formatCurrency(),
                style: getTextStyle(context, CustomTextStyle.subtitle1Medium20).apply(
                  color: Color(0xFFff0000),
                ),
              ),

            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Text('${model.createdTime.wrappedValue().toDateTime().toDDMMYYYYString()}')
            ],
          ),
          //Time - phone + fee ship
          Row(
            children: [
              Row(children: [
                Text('${model.createdTime.wrappedValue().toDateTime().tohhmmString()} - ',
                  style: getTextStyle(context, CustomTextStyle.body2Regular14).apply(
                    color: Color(0xFF6f6f6f),
                  ),),
              ],),
              SizedBox(
                height: 33,
                child: TextButton(
                  onPressed: (){
                    final telLaunchUri = Uri(
                      scheme: 'tel',
                      path: model.custPhone,
                    );
                    launchUrl(telLaunchUri);
                    },
                  child: Text('${model.custPhone.wrappedValue()}',
                    style: getTextStyle(context, CustomTextStyle.body2Regular14).apply(
                      color: $constants.theme.defaultThemeColor,
                      decoration: TextDecoration.underline,
                        decorationColor: $constants.theme.defaultThemeColor,
                    ),
                  ),
                ),
              ),

              Spacer(),

              Row(
                children: [
                  Visibility(
                    visible: model.order_type == OrderType.EXPRESS,
                      child: Text(
                        "(Hoả tốc)",
                        style: getTextStyle(context, CustomTextStyle.heading5Bold16).apply(
                          color: const Color(0xFFF5222D),
                        ),
                      ),
                  ),
                  SizedBox(width: 8,),
                  Text(
                    model.feeShip.wrappedValue().formatCurrency(),
                    style: getTextStyle(context, CustomTextStyle.text2ExtraRegular12).apply(
                      color: $constants.theme.defaultColorDisable,
                    ),
                  ),
                ],
              ),

            ],
          ),
          //address
          Row(
            children: [
              SizedBox(
                width: (getSize(context).width -  40) * 0.45,
                child: Text(
                  model.address.wrappedValue(),
                  style: getTextStyle(context, CustomTextStyle.body2Regular14),
                  maxLines: 2,
                ),
              ),

              const Spacer(),

              SizedBox(
                width: (getSize(context).width -  40) * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      model.orderCode.wrappedValue(),
                      textAlign: TextAlign.right,
                      style: getTextStyle(context, CustomTextStyle.text2ExtraRegular12).apply(
                        color: $constants.theme.defaultColorDisable,
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      getOrderShipStatusCode(model.status.wrappedValue()).getText(context),
                      maxLines: 3,
                      textAlign: TextAlign.right,
                      style: getTextStyle(context, CustomTextStyle.heading6Bold14).apply(
                        color: getOrderShipStatusCode(model.status.wrappedValue()).getTextColor(),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 8,),

          Container(
            width: getDynamicWidth(context, 331),
            height: 1,
            color: Color(0xffE9E9E9),
          ),
        ],
      ),
    );
  }
}