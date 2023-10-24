import 'package:reactive_forms/reactive_forms.dart';

FormGroup get notSuccessReasonDetailOrderForm => FormGroup({
  'reason': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
  'piece_delivered_amount': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
});