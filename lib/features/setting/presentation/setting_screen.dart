import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:teship/features/app/blocs/app_cubit.dart';
import 'package:teship/features/change_password/presentation/change_password_screen.dart';
import 'package:teship/features/setting/presentation/components/setting_item_view.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:auto_route/auto_route.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/router.gr.dart';
import '../../../data/data_source/endpoint.dart';
import '../../../data/responses/responses.dart';
import '../../../modules/dio/dio_client.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../utils/methods/aliases.dart';
import '../../../utils/methods/shortcuts.dart';
import '../../auth/login/blocs/auth_cubit.dart';
import '../models/setting_features_code.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late bool _switchValue;

  @override
  void initState() {
    _switchValue = !getIt<AppCubit>().state.isShopMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: getSize(context).width,
        height: getSize(context).height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: getDynamicHeight(context, 40),
              ),
              Visibility(
                visible: getIt<AppCubit>().state.isShopMode,
                child: SettingItemView(
                  iconPath: 'assets/images/dashboard/ic_store_info_green.svg',
                  title: context.t.strings.setting.text_store_info,
                  haveBottomLine: true,
                  onClickItem: () {
                    onClickItem(SettingFeaturesCode.INFO_STORE);
                  },
                ),
              ),
              SettingItemView(
                iconPath:
                    'assets/images/dashboard/ic_change_password_green.svg',
                title: context.t.strings.setting.text_change_password,
                haveBottomLine: true,
                onClickItem: () {
                  onClickItem(SettingFeaturesCode.CHANGE_PASS);
                },
              ),
              SettingItemView(
                iconPath: 'assets/images/dashboard/ic_scan.svg',
                title: "Kiểm tra đơn hàng",
                haveBottomLine: true,
                onClickItem: () async {
                  try {
                    late Dio _dioClient;
                    final dioTokenRefresh = getIt<DioTokenRefresh>();
                    _dioClient = await getDio(env, dioTokenRefresh);
                    final String barcodeScanRes =
                    "123456";
                    final endpoint = EndPointFeatures.checkOrder.url;
                    final data = <String, dynamic>{
                      'order_code': barcodeScanRes
                    };

                    logIt..info('endpoint -- ${endpoint}')..info(
                        'data -- ${data}');
                    final result = await _dioClient.post(
                      endpoint,
                      data: data,
                    );

                    logIt.info('response --${result.data}');
                    if (result.data["data"] == true) {
                      showAlertDialog(
                        context,
                        'Đơn hàng ${barcodeScanRes} hiện đang tồn tại trên hệ thống',
                      );
                    } else {
                      showAlertDialog(
                        context,
                        'Không tìm thấy đơn hàng phù hợp với mã hoá đơn ${barcodeScanRes}',
                      );
                    }
                  } on Exception catch (_) {
                    showAlertDialog(
                      context,
                      'Hiện không thể kiểm tra đơn hàng vui lòng thử lại',
                    );
                  }
                },
              ),
              SettingItemView(
                iconPath: 'assets/images/dashboard/ic_logout_green.svg',
                title: context.t.strings.setting.text_logout,
                onClickItem: () {

                  onClickItem(SettingFeaturesCode.LOGOUT);
                },
              ),
              Spacer(),
              Text(
                context.t.strings.setting
                    .text_version(version: $constants.version),
                style: getTextStyle(context, CustomTextStyle.body1Regular16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Text(
                  context.t.strings.setting.text_program_by_vibelabs,
                  style: getTextStyle(context, CustomTextStyle.body1Regular16),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onClickItem(SettingFeaturesCode code) {
    switch (code) {
      case SettingFeaturesCode.INFO_STORE:
        context.router.push(ChangeInfoScreenRoute());
        break;
      case SettingFeaturesCode.CHANGE_PASS:
        context.router.push(ChangePasswordScreenRoute());
        break;
      case SettingFeaturesCode.LOGOUT:
        getIt<AuthCubit>().logOut();
    }
  }
}
