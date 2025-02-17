import 'package:get/get.dart';

class SettingsController extends GetxController {
  RxDouble height = 200.0.obs;

  void adjustHeader(double value) {
    height.value = value;
  }
}
