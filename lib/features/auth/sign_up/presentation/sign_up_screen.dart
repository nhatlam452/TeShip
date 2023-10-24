import 'package:flutter/material.dart';
import 'package:teship/features/app/widgets/customs/custom_textfield.dart';
import 'package:teship/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:teship/features/auth/sign_up/form/sign_up_form.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/utils/constants.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  final FormGroup _form = signUpForm;

  String get username => _form.control('username').value.toString();

  String get password => _form.control('password').value.toString();

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisserWidget(
      child: ReactiveForm(
        formGroup: _form,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF0F1114),
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text(
                      'Have an account ?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF0F1114),
                      ),
                    ),
                    Text(
                      'Login',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomTextField(
                  key: const Key('username'),
                  formControlName: 'username',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  labelText: context.t.strings.form.username.label,
                  hintText: context.t.strings.form.username.hint,
                  minLength: 4,
                  isRequired: true,
                ),
                CustomTextField(
                  key: const Key('password'),
                  formControlName: 'password',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  labelText: context.t.strings.form.password.label,
                  hintText: context.t.strings.form.password.hint,
                  minLength: 4,
                  isRequired: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
