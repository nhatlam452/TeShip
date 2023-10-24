import 'package:reactive_forms/reactive_forms.dart';

FormGroup get loginForm => FormGroup({
    'phone': FormControl<String>(
      value: '',
      validators: [
        Validators.required,
        Validators.minLength(10),
        Validators.pattern(r'(^(?:[+0]9)?[0-9]{10,12}$)'),
      ],
    ),

    'password': FormControl<String>(
      value: '',
      validators: [
        Validators.required,
        Validators.minLength(1),
        Validators.maxLength(30),
      ],
    ),
});
