import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/modules/absence/controllers/absence_controller.dart';
import 'package:qrm/app/modules/kasbon/controllers/kasbon_controller.dart';
import 'package:flutter/material.dart';

class AbsenceView extends StatefulWidget {
  const AbsenceView({super.key});

  @override
  _AbsenceViewState createState() => _AbsenceViewState();
}

class _AbsenceViewState extends State<AbsenceView> {
  Map<String, bool> showDetails = {};
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
      "data":[
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
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final KasbonController refreshController = Get.put(KasbonController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Absence',
          style: TextStyle(fontWeight: Fw.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: LzListView(
          physics: NeverScrollableScrollPhysics(),
          padding: Ei.sym(h: 30, v: 25),
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ========== COLUMN A ==========
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LzImage(
                            'profile.png',
                            size: 60,
                            radius: 50,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bareel Husein, S. Kom',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text('Manager IT - Pusat'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '09:45:00 WITA',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rabu, 5 Februari 2025',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Absen Masuk',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: Fw.bold,fontFamily: 'Poppins'),
                                    ),
                                    Text(
                                      '00:00:00 WITA',
                                      
                                    ),
                                    Text(
                                      'Terlambat',
                                      style: TextStyle(
                                          color: Colors.black,
                                          backgroundColor:
                                              Color.fromARGB(255, 255, 0, 0)),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: Caa.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: const Text(
                                        'Absen Pulang',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: Fw.bold, fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Text('00:00:00 WITA'),
                                    Text('')
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF302C7B),
                                        Color(0xFF5C5A7C)
                                      ],
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Hi.login03,
                                          color: Colors.white, size: 18),
                                      SizedBox(width: 5),
                                      GestureDetector(
                                        onTap: () {
                                          Get.snackbar('Absen Masuk',
                                              'Berhasil absen masuk');
                                        },
                                        child: Text('Absen Masuk',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF100C58), Color(0xFF5E5BA7)],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jumlah Telat Bulan :',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '10x (Hari)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Februari',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '45 Menit (Total)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            SizedBox(
                              height:
                                  200, // Sesuaikan tinggi agar daftar bulan bisa di-scroll
                              child: SingleChildScrollView(
                                physics: AlwaysScrollableScrollPhysics(),
                                child: Column(
                                  children: absensiData.map((absensi) {
                                    String bulan = absensi["bulan"];
                                    bool isExpanded =
                                        showDetails[bulan] ?? false;

                                    return Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showDetails[bulan] = !isExpanded;
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0,
                                                horizontal: 4),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  bulan,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Icon(
                                                  isExpanded
                                                      ? Icons.keyboard_arrow_up
                                                      : Icons
                                                          .keyboard_arrow_down,
                                                  size: 24,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        if (isExpanded)
                                          Container(
                                            margin: EdgeInsets.only(top: 5),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            child: Column(
                                              children: absensi["data"]
                                                  .map<Widget>((absen) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 3,
                                                      horizontal: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(absen['tanggal'],
                                                          style: TextStyle(
                                                              fontSize: 13)),
                                                      Text(absen['status'],
                                                          style: TextStyle(
                                                              fontSize: 13)),
                                                    ],
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        SizedBox(height: 10),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
