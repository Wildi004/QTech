import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/data/apis/api.dart';
import 'package:qrm/app/data/services/storage/auth.dart';

class AbsenceController extends GetxController with Apis {
  var isSnackbarVisible = false.obs;
  final ScrollController scrollController = ScrollController();
  void showSnackbar() {
    if (!isSnackbarVisible.value) {
      isSnackbarVisible.value = true;
      Get.snackbar('Absen Pulang', 'Berhasil Absen Pulang');

      Future.delayed(Duration(seconds: 4), () {
        isSnackbarVisible.value = false;
      });

      Future getUserLogged() async {
        try {
          final auth = await Auth.user();
          final res = await api.user.getData(auth.id!);
        } catch (e, s) {
          Errors.check(e, s);
        }
      }

      Future onPageInit() async {
        try {
          await getUserLogged();
        } catch (e, s) {
          Errors.check(e, s);
        }
      }

      @override
      void onInit() {
        super.onInit();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          onPageInit();

          if (scrollController.hasClients) {
            scrollController.animateTo(
              140 * 1,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          }
        });
      }

      List<Map<String, dynamic>> absensiData = [
        {
          "bulan": "Februari",
          "data": [
            {'tanggal': 'Senin, 10 Februari 2025', 'status': 'Normal'},
            {'tanggal': 'Sabtu, 8 Februari 2025', 'status': 'Sakit'},
            {'tanggal': 'Jumat, 7 Februari 2025', 'status': 'Izin'},
            {'tanggal': 'kamis, 6 Februari 2025', 'status': 'Normal'},
            {'tanggal': 'Rabu, 5 Februari 2025', 'status': 'Terlambat'},
            {'tanggal': 'Selasa, 4 Februari 2025', 'status': 'Normal'},
            {'tanggal': 'Senin, 3 Februari 2025', 'status': 'Normal'},
            {'tanggal': 'Sabtu, 1 Februari 2025', 'status': 'Terlambat'},
          ]
        },
        {
          "bulan": "Januari",
          "data": [
            {'tanggal': 'Senin, 10 Januari 2025', 'status': 'Normal'},
            {'tanggal': 'Sabtu, 8 Januari 2025', 'status': 'Normal'},
            {'tanggal': 'Jumat, 7 Januari 2025', 'status': 'Normal'},
            {'tanggal': 'kamis, 6 Januari 2025', 'status': 'Normal'},
            {'tanggal': 'Rabu, 5 Januari 2025', 'status': 'Terlambat'},
            {'tanggal': 'Selasa, 4 Januari 2025', 'status': 'Normal'},
            {'tanggal': 'Senin, 3 Januari 2025', 'status': 'Normal'},
            {'tanggal': 'Sabtu, 1 Januari 2025', 'status': 'Terlambat'},
          ]
        },
        {
          "bulan": "Desember",
          "data": [
            {'tanggal': 'Senin, 10 Desember 2025', 'status': 'Sakit'},
            {'tanggal': 'Sabtu, 8 Desember 2025', 'status': 'Normal'},
            {'tanggal': 'Jumat, 7 Desember 2025', 'status': 'Normal'},
            {'tanggal': 'kamis, 6 Desember 2025', 'status': 'Normal'},
            {'tanggal': 'Rabu, 5 Desember 2025', 'status': 'Terlambat'},
            {'tanggal': 'Selasa, 4 Desember 2025', 'status': 'Normal'},
            {'tanggal': 'Senin, 3 Desember 2025', 'status': 'Normal'},
            {'tanggal': 'Sabtu, 1 Desember 2025', 'status': 'Terlambat'},
          ]
        },
        {
          "bulan": "November",
          "data": [
            {'tanggal': 'Senin, 10 November 2025', 'status': 'Sakit'},
            {'tanggal': 'Sabtu, 8 November 2025', 'status': 'Normal'},
            {'tanggal': 'Jumat, 7 November 2025', 'status': 'Normal'},
            {'tanggal': 'kamis, 6 November 2025', 'status': 'Normal'},
            {'tanggal': 'Rabu, 5 November 2025', 'status': 'Terlambat'},
            {'tanggal': 'Selasa, 4 November 2025', 'status': 'Normal'},
            {'tanggal': 'Senin, 3 November 2025', 'status': 'Normal'},
            {'tanggal': 'Sabtu, 1 November 2025', 'status': 'Terlambat'},
          ]
        },
      ];
    }
  }
}
