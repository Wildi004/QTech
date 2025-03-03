import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
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
          padding: Ei.sym(
              h: MediaQuery.of(context).size.height * 0.035,
              v: MediaQuery.of(context).size.height * 0.02),
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
                            size: MediaQuery.of(context).size.height * 0.075,
                            radius: 50,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.height * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bareel Husein, S. Kom',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Manager IT - Pusat',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.016,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.019,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: MediaQuery.of(context).size.height * 0.003,
                          ),
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
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.025,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rabu, 5 Februari 2025',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.014,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Absen Masuk',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      '00:00:00 WITA',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                    ),

                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ), // Jarak antar teks

                                    Container(
                                      padding: EdgeInsets.all(
                                        MediaQuery.of(context).size.height *
                                            0.0025,
                                      ), // Padding agar lebih rapi
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 255, 0,
                                            0), // Warna latar belakang merah
                                        borderRadius: BorderRadius.circular(
                                            5), // Membuat sudut melengkung
                                      ),
                                      child: Text(
                                        'Terlambat',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          color: Colors
                                              .white, // Warna teks dibuat putih agar kontras
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: Caa.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.height *
                                                0.007,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.001,
                                      ),
                                      child: Text(
                                        'Absen Pulang',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                            color: Colors.black,
                                            fontWeight: Fw.bold,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Text(
                                      '00:00:00 WITA',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                    ),
                                    Text(''),
                                    Text(''),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:  MediaQuery.of(context).size.height *
                                                0.05,
                                  width:  MediaQuery.of(context).size.width *
                                                0.35,
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

                  SizedBox(height:  MediaQuery.of(context).size.height *
                                                0.02,),

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          padding: EdgeInsets.all( MediaQuery.of(context).size.height *
                                                0.023),
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
                                      fontSize:  MediaQuery.of(context).size.height *
                                                0.02,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '10x (Hari)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:  MediaQuery.of(context).size.height *
                                                0.02,
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
                                      fontSize:  MediaQuery.of(context).size.height *
                                                0.025,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '45 Menit (Total)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:  MediaQuery.of(context).size.height *
                                                0.02,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height:  MediaQuery.of(context).size.height *
                                                0.011,),
                        Column(
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height *
                                                0.25, // Sesuaikan tinggi agar daftar bulan bisa di-scroll
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
                                                vertical: 8.0, horizontal: 4),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  bulan,
                                                  style: TextStyle(
                                                      fontSize: MediaQuery.of(context).size.height *
                                                0.025,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Icon(
                                                  isExpanded
                                                      ? Icons.keyboard_arrow_up
                                                      : Icons
                                                          .keyboard_arrow_down,
                                                  size: MediaQuery.of(context).size.height *
                                                0.03,
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
                                                              fontSize: MediaQuery.of(context).size.height *
                                                0.017)),
                                                      Text(absen['status'],
                                                          style: TextStyle(
                                                              fontSize: MediaQuery.of(context).size.height *
                                                0.017)),
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
