import 'package:reactive_forms/reactive_forms.dart';

FormGroup get infoCustomerCreateOrderForm => FormGroup({
  'name': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
  'phone': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
      Validators.minLength(10),
      Validators.pattern(r'(^(?:[+0]9)?[0-9]{10,12}$)'),
    ],
  ),
  'address': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
});

FormGroup get infoProductCreateOrderForm => FormGroup({
  'product_name': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
  'unit_price': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
  'quantity': FormControl<String>(
    value: '1',
    validators: [
      Validators.required,
      Validators.number,
    ],
  ),
});

FormGroup get deliveryChargesCreateOrderForm => FormGroup({
  'delivery_charges': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
});