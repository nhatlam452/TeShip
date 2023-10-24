import 'package:reactive_forms/reactive_forms.dart';

FormGroup get changeInfoForm => FormGroup({
  'full_name': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
  'phone': FormControl<String>(
    value: '',
  ),
  'email': FormControl<String>(
    value: '',
  ),
  'address': FormControl<String>(
    value: '',
  ),
  'store_code': FormControl<String>(
    value: '',
  ),
});