import 'package:get/get.dart';
import 'package:qrm/app/routes/app_pages.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  void login() {
    if (email.value.isNotEmpty && password.value.isNotEmpty) {
      Get.offNamed(Routes.APP);
    } else {
      Get.snackbar('Error', 'Email dan password harus diisi');
    }
  }
}
