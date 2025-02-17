import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/modules/kasbon/controllers/kasbon_controller.dart';

class KasbonView extends GetView<KasbonController> {
  const KasbonView({super.key});

  @override
  Widget build(BuildContext context) {
    bool showDetails = false;
    final KasbonController refreshController = Get.put(KasbonController());
    List<Map<String, String>> absensiFebruari = [
      {
        'tanggal': '10 Januari 2025',
        'keterangan': 'Keperluan Pribadi',
        'status': 'Rp. 100.000.000,-',
        'validasi': 'Sudah Di Validasi'
      },
    ];

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refreshController.refreshData,
        child: Stack(
          children: [
            // Header
            Obx(() => Container(
                  width: MediaQuery.of(context).size.width,
                  height: controller.height.value,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF750101), Color(0xFF460000)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Kasbon',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),

            // ListView
            LzListView(
              physics: const NeverScrollableScrollPhysics(),
              gap: 20,
              padding: Ei.only(t: 140 - 50, b: 100),
              onScroll: (value) {
                double pixels = value.pixels;
                controller.adjustHeader(
                  pixels < 0
                      ? 250 + pixels.abs()
                      : (250 - pixels.abs()).clamp(0, 500),
                );
              },
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Color(0xFF100C58), Color(0xFF5E5BA7)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17, top: 10),
                              child: Text(
                                'Sisa Saldo Bareel Husein',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 17, top: 5),
                              child: Text(
                                'Rp. - 100.000.000,-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 17,
                          top: 10,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.showAjukanForm(context);
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        // ignore: deprecated_member_use
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child:
                                      const Icon(Icons.add, color: Colors.blue),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Ajukan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF750101),
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Perhatian!,',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Text(
                            ' Saldo anda minus...',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Daftar Kasbon :',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Obx(
                    () {
                      return GestureDetector(
                        onTap: () {
                          controller.showDetails.value =
                              !controller.showDetails.value;
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  ' 1.',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(
                                  controller.showDetails.value
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 24,
                                ),
                              ],
                            ),
                            if (controller.showDetails.value)
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: ['750101'.hex, '460000'.hex]),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: absensiFebruari.length,
                                    itemBuilder: (context, index) {
                                      final absen = absensiFebruari[index];
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                             left: 20, right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (index == 0)
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 15),
                                                child: (Text(
                                                  absen['tanggal']!,
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontFamily: 'PassionOne'),
                                                )),
                                              ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(absen['keterangan']!,
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white,
                                                        fontFamily: 'Poppins')),
                                                Text(absen['status']!,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white,
                                                        fontFamily: 'Poppins')),
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Validasi :',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: Fw.bold),
                                                  ),
                                                  Text(
                                                    absen['validasi']!,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white70,
                                                        fontWeight: Fw.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.snackbar('Info', 'Data bulan Januari tidak ditambahkan',
                        backgroundColor: Colors.white);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2.',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          showDetails
                              // ignore: dead_code
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.snackbar('Info', 'Data bulan Januari tidak ditambahkan',
                        backgroundColor: Colors.white);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3.',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          showDetails
                              // ignore: dead_code
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
