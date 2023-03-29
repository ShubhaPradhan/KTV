import 'package:get/get.dart';

class PreferenceController extends GetxController {
  var isChecked = false.obs;

  void toggleChecked(int index) {
    isChecked.value = !isChecked.value;
  }
}
