import 'package:reactive_forms/reactive_forms.dart';
import 'package:teship/features/create_order/form/create_order_form.dart';


class InfoOrderViewModel {
  InfoOrderViewModel(FormGroup infoProductCreateOrderForm, int i);

  FormGroup formGroup = infoProductCreateOrderForm;
  int quantity = 1;
}

