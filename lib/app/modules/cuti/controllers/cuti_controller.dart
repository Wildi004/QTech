import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrm/app/data/apis/api.dart';

class CutiController extends GetxController with Apis{
  
  var sisaCuti = 15.obs;
  var cutiList = [
    {
      "title": "Cuti Healing",
      "isExpanded": false.obs,
      "detail":
          "Cuti 3 Hari\n04 Februari 2025 s/d 06 Februari 2025\nBelum Validasi"
    },
    {"title": "Cuti Keagamaan", "isExpanded": false.obs, "detail": ""},
    {"title": "Cuti Party", "isExpanded": false.obs, "detail": ""}
  ];
  var isFormVisible = false.obs; // Status form (terlihat/tidak)

  // Controller untuk input form
  final TextEditingController tanggalPengajuan = TextEditingController();
  final TextEditingController perihalCuti = TextEditingController();
  final TextEditingController tanggalDari = TextEditingController();
  final TextEditingController tanggalSampai = TextEditingController();

  // Fungsi untuk menampilkan/menyembunyikan form
  void toggleForm() {
    isFormVisible.value = !isFormVisible.value;
  }

  // Fungsi untuk mengirim data
  void submitForm() {
    if (tanggalPengajuan.text.isEmpty ||
        perihalCuti.text.isEmpty ||
        tanggalDari.text.isEmpty ||
        tanggalSampai.text.isEmpty) {
      Get.snackbar("Error", "Semua kolom harus diisi",
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    // Simulasi penyimpanan data
    print("Tanggal Pengajuan: ${tanggalPengajuan.text}");
    print("Perihal Cuti: ${perihalCuti.text}");
    print("Dari: ${tanggalDari.text}");
    print("Sampai: ${tanggalSampai.text}");

    Get.snackbar("Sukses", "Pengajuan cuti berhasil dikirim",
        backgroundColor: Colors.green, colorText: Colors.white);

    // Reset form setelah pengajuan
    tanggalPengajuan.clear();
    perihalCuti.clear();
    tanggalDari.clear();
    tanggalSampai.clear();
    isFormVisible.value = false;
  }
}
