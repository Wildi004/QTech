import 'package:get/get.dart';

class BonusKaryawanController extends GetxController {
  var saldo = 400000000.obs;
  var dataBonus = [
    {
      "bulan": "Februari - 2025",
      "isExpanded": true.obs,
      "items": [
        {"kode": "RAP QRM 010/KP-RJ", "tanggal": "04 Februari 2025", "nominal": 100000000},
        {"kode": "RAP QRM 011/KP-RJ", "tanggal": "04 Februari 2025", "nominal": 100000000},
        {"kode": "RAP QRM 012/KP-RJ", "tanggal": "04 Februari 2025", "nominal": 100000000},
        {"kode": "RAP QRM 013/KP-RJ", "tanggal": "04 Februari 2025", "nominal": 100000000},
      ],
    },
    {
      "bulan": "Januari - 2025",
      "isExpanded": false.obs,
      "items": [],
    },
    {
      "bulan": "Desember - 2025",
      "isExpanded": false.obs,
      "items": [],
    },
    {
      "bulan": "November - 2025",
      "isExpanded": false.obs,
      "items": [],
    },{
      "bulan": "Oktober - 2025",
      "isExpanded": false.obs,
      "items": [],
    },
  ].obs;
}