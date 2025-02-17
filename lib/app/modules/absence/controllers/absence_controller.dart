import 'package:get/get.dart';

class AbsenceController extends GetxController {
  var isSnackbarVisible = false.obs;

  void showSnackbar() {
    if (!isSnackbarVisible.value) {
      isSnackbarVisible.value = true;
      Get.snackbar('Absen Pulang', 'Berhasil Absen Pulang');

      // Setelah 2 detik, reset kembali agar bisa menampilkan snackbar lagi
      Future.delayed(Duration(seconds: 4), () {
        isSnackbarVisible.value = false;
      });
    }
  }
}
