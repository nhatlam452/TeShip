import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teship/features/auth/login/presentation/login_screen.dart';
import 'package:hive/hive.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../blocs/auth_cubit.dart';

extension LoginController on LoginScreenState {

  // Click login then remember Phone - Password.
  // Call api check data
  void clickLogin() {
    if (isCheckRemember) {
      getDataExist();
    }
    if (form.valid) {
      BlocProvider.of<AuthCubit>(context).login(
        username: phone,
        password: password,
      );
    }
  }
  void getDataExist() async {
    // final userInfoBox = await Hive.openBox('userInfo');
    final userInfoBox = await Hive.openBox('authInfo');
    userInfoBox.put('phone', phone);
    userInfoBox.put('password', password);

    await userInfoBox.close();
  }

  void setDataExist() async {
    // Get saved info.
    final userInfoBoxExists = await Hive.boxExists('authInfo');
    if (userInfoBoxExists){
      final userInfoBox = await Hive.openBox('authInfo');

      final savedPhone = userInfoBox.get('phone');
      final savedPassword = userInfoBox.get('password');
      // Set saved info.
      if ((savedPhone != '') && (savedPassword != '')){
        setState(() {
          isCheckRemember = true;
        });
        form.control('phone').value = savedPhone;
        form.control('password').value = savedPassword;
      }
      else {
        setState(() {
          isCheckRemember = false;
        });
      }
      //
    }
  }
}