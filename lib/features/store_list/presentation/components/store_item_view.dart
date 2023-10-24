import 'package:flutter/material.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../../../../data/responses/responses.dart';

class StoreItemViewNew extends StatelessWidget {
  const StoreItemViewNew({super.key, required this.model});

  final StoreModelResponse model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSize(context).width - 16,
      margin: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0, 0.6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Store name + number orders
            Row(
              children: [
                SizedBox(
                  width: getSize(context).width - 52,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      model.name,
                      style: getTextStyle(context, CustomTextStyle.heading5Bold16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      // getDisplayWaitOrder(model.waitOrder.wrappedValue()),
                      '${model.waitOrder.wrappedValue()}',
                      style: getTextStyle(context, CustomTextStyle.heading6Bold14).apply(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //phone
            const SizedBox(
              height: 8,
            ),
            Text(
              model.phone,
              style: getTextStyle(context, CustomTextStyle.body1Regular16),
            ),
            //address
            const SizedBox(
              height: 8,
            ),
            Text(
              model.address,
              style: getTextStyle(context, CustomTextStyle.body1Regular16),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  model.storeCode,
                  style: getTextStyle(context, CustomTextStyle.body1Regular16),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),

                Spacer(),

                Text(
                  model.amountWaitOrder.wrappedValue().formatCurrency(),
                  style: getTextStyle(context, CustomTextStyle.body1Regular16),
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }

  String getDisplayWaitOrder(int waitOrder) {
    return waitOrder > 9 ? '9+' : '$waitOrder';
  }
}