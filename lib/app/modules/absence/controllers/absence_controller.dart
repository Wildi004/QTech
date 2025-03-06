import 'package:get/get.dart';

class AbsenceController extends GetxController {
  var isSnackbarVisible = false.obs;

  void showSnackbar() {
    if (!isSnackbarVisible.value) {
      isSnackbarVisible.value = true;
      Get.snackbar('Absen Pulang', 'Berhasil Absen Pulang');

      
      Future.delayed(Duration(seconds: 4), () {
        isSnackbarVisible.value = false;
      });
    }
  }
}
