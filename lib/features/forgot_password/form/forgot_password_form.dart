import 'package:reactive_forms/reactive_forms.dart';

FormGroup get forgotPasswordForm => FormGroup({
  'email': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
      Validators.email,
    ],
  ),
});