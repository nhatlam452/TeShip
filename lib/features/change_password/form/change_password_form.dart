import 'package:reactive_forms/reactive_forms.dart';

FormGroup get changePassForm => FormGroup({
  'current_pass': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
  'new_pass': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
    ],
  ),
  'repeat_pass': FormControl<String>(
    value: '',
    validators: [
      Validators.required,
      // Validators.mustMatch('repeat_pass', 'new_pass'),
    ],
  ),
});

// ValidatorFunction mustMatch(
//     String controlName, String matchingControlName,
//     {bool markAsDirty = true}) {
//   final password = _form.control(controlName).value;
//   final repeatPassword = control.control(matchingControlName).value;
//
//   if (password != repeatPassword) {
//     return "Passwords must match";
//   }
//
//   return null;
// }