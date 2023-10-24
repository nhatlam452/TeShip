import 'package:flutter/material.dart';
import 'package:teship/features/app/blocs/app_cubit.dart';
import 'package:teship/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../../modules/dependency_injection/di.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          appBar: (state.isShopMode) ? $constants.navigation.appbars(context).elementAt(state.pageIndex) : $constants.shipNavigation.appbars(context).elementAt(state.pageIndex),
          body: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: (state.isShopMode) ? $constants.navigation.bottomNavigationScreens().elementAt(state.pageIndex) : $constants.shipNavigation.bottomNavigationScreens().elementAt(state.pageIndex),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),  // Shadow color
                  blurRadius: 4,  // Spread radius
                  offset: Offset(0, -8),  // Offset in the vertical direction (-2 for top shadow effect)
                ),
              ],
            ),
            child: BottomNavigationBar(
              items: (state.isShopMode) ?  $constants.navigation.bottomNavigationItems(context) :  $constants.shipNavigation.bottomNavigationItems(context),
              type: BottomNavigationBarType.fixed,
              currentIndex: state.pageIndex,
              showUnselectedLabels: true,
              unselectedItemColor: $constants.theme.defaultColorDisable,
              unselectedLabelStyle: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
              selectedItemColor: $constants.theme.defaultThemeColor,
              selectedLabelStyle: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
              onTap: (index) =>
                  getIt<AppCubit>().changePageIndex(index: index),
            ),
          ),
        );
      },
    );
  }
}
