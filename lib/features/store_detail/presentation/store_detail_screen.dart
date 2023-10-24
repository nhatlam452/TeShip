import 'package:flutter/material.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/order_list/presentation/order_list_screen.dart';

import '../../../utils/constants.dart';
import '../../../utils/methods/shortcuts.dart';

class StoreDetailScreen extends StatefulWidget {
  const StoreDetailScreen({super.key, required this.storeModel});

  final StoreModelResponse storeModel;

  @override
  State<StatefulWidget> createState() => _StoreDetailScreen();
}

class _StoreDetailScreen extends State<StoreDetailScreen> {
  late bool isDetailOrder;

  @override
  void initState() {
    isDetailOrder = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isDetailOrder ? AppBar(
        toolbarHeight: 0,
        shadowColor: Colors.transparent,
      ) : AppBar(
        elevation: 0,
        title: Text(widget.storeModel.name,
          style: getTextStyle(context, CustomTextStyle.title1SemiBold24),),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: getSize(context).width,
          height: getSize(context).height - 100,
          child: OrderListScreen(
            storeId: widget.storeModel.id,
            onMoveToDetail: (){
              setState(() {
                isDetailOrder = true;
              });
            },
            onBackToList: (){
              setState(() {
                isDetailOrder = false;
              });
            },
          ),
        ),
      ),
    );
  }
}