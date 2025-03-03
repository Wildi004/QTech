import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/modules/home/views/menus/bsd.dart';
import 'package:qrm/app/modules/home/views/menus/finance_pusat.dart';
import 'package:qrm/app/modules/home/views/menus/reg_barat.dart';
import 'package:qrm/app/modules/home/views/menus/reg_pusat.dart';
import 'package:qrm/app/modules/home/views/menus/reg_timur.dart';
import 'package:qrm/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: MediaQuery.of(context).size.width * 0.088,
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LzImage(
                      'ic_launcher.png',
                      size: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Hi.notification01,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: MediaQuery.of(context).size.width * 0.07,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Konfirmasi Logout",
                              titleStyle:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              middleText: "Apakah Anda yakin ingin logout?",
                              textConfirm: "Ya",
                              buttonColor: '4CA1AF'.hex,
                              textCancel: "Batal",
                              confirmTextColor:
                                  const Color.fromARGB(255, 243, 239, 239),
                              onConfirm: () {
                                // Aksi saat logout dikonfirmasi
                                Get.offAllNamed(Routes
                                    .LOGIN); // Menghapus semua halaman sebelumnya
                              },
                              onCancel: () {
                                // Tidak melakukan apa-apa jika dibatalkan
                              },
                            );
                          },
                          icon: Icon(
                            Icons.logout,
                            size: MediaQuery.of(context).size.width * 0.07,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    width: screenWidth * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: ['4CA1AF'.hex, '808080'.hex],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 115, 115, 119),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi! Bareel Husein',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.08,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DeliciousHandrawn'),
                          ),
                          Text(
                            'Manager IT - PUSAT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sisa Saldo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Rp. 100.000.000,-',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                color: Colors.white,
                                fontWeight: Fw.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.08,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.24,
                  child: Obx(
                    () => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.items.length,
                      itemBuilder: (context, index) {
                        final item = controller.items[index];

                        return Container(
                          width: MediaQuery.of(context).size.width * 0.49,
                          margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.025,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: ['467BF6'.hex, '5D688A'.hex],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                              top: 10),
                          child: Column(
                            crossAxisAlignment: Caa.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              if (item['title']!.isNotEmpty)
                                Text(
                                  item['title']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.007,
                              ),
                              if (item['date']!.isNotEmpty)
                                Text(
                                  item['date']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.025,
                                  ),
                                ),
                              if (item['location']!.isNotEmpty) ...[
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.036,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined,
                                        color: Colors.white),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    Text(
                                      item['location']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.026,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menu Favorite",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: MediaQuery.of(context).size.width * 0.01,
                  runSpacing: MediaQuery.of(context).size.width * 0.03,
                  children: List.generate(4, (i) {
                    final label = [
                      'Kasbon',
                      'Capaian Kinerja',
                      'Kategori',
                      'Surat'
                    ];

                    final colors = [
                      '5D688A'.hex,
                      '4CA1AF'.hex,
                      '9f68dd'.hex,
                      '467bf6'.hex,
                    ];

                    final icons = [
                      Hi.note,
                      Hi.chartLineData02,
                      Hi.note01,
                      Hi.fileAttachment,
                    ];

                    return LayoutBuilder(
                      builder: (context, constraints) {
                        double containerSize =
                            constraints.maxWidth * 0.2; // Ukuran Container
                        double iconSize =
                            constraints.maxWidth * 0.07; // Ukuran Icon

                        return SizedBox(
                          width: containerSize * 1.2, // Supaya responsif
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (i == 0) {
                                    Get.toNamed(Routes.KASBON);
                                  } else if (i == 1) {
                                    Get.snackbar('Maaf',
                                        'Masih dalam tahap pengembangan');
                                  }
                                },
                                child: Container(
                                  width: containerSize,
                                  height: containerSize * 0.7,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors[i],
                                  ),
                                  child: Icon(
                                    icons[i],
                                    color: Colors.white,
                                    size: iconSize,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                label[i],
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: containerSize *
                                      0.18, // Ukuran font responsif
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: Caa.start,
                      children: [
                        Text(
                          "Menu Regional",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Obx(() {
                      int active = controller.tabIndex.value;

                      return LayoutBuilder(
                        builder: (context, constraints) {
                          double screenWidth = constraints.maxWidth;
                          double paddingV =
                              screenWidth * 0.01; // Padding Vertikal
                          double paddingH =
                              screenWidth * 0.02; // Padding Horizontal
                          double marginL =
                              screenWidth * 0.02; // Margin antar tab
                          double borderRadius =
                              screenWidth * 0.05; // Radius Border

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: LzTabView(
                                  tabs: const [
                                    'CEO',
                                    'BSD',
                                    'Finance Pusat',
                                    'Teknik',
                                    'Regional Barat',
                                    'Regional Timur'
                                  ],
                                  onTap: (key, i) {
                                    controller.tabIndex.value = i;
                                  },
                                  builder: (label, i) {
                                    bool isActive = active == i;

                                    return Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: paddingV,
                                          horizontal: paddingH),
                                      decoration: BoxDecoration(
                                        color: isActive
                                            ? Color(0xFF467BF6)
                                            : const Color.fromARGB(
                                                255, 243, 238, 238),
                                        borderRadius:
                                            BorderRadius.circular(borderRadius),
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(
                                          left: i == 0 ? 0 : marginL),
                                      child: Text(
                                        label,
                                        style: TextStyle(
                                          color: isActive
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                    Obx(() {
                      int tab = controller.tabIndex.value;

                      return LayoutBuilder(
                        builder: (context, constraints) {
                          double containerHeight = constraints.maxWidth * 0.4;

                          Map<int, Widget> menus = {
                            0: SizedBox(
                                height: containerHeight, child: RegPusat()),
                            1: SizedBox(height: containerHeight, child: Bsd()),
                            2: SizedBox(
                                height: containerHeight, child: FinancePusat()),
                            3: SizedBox(
                                height: containerHeight,
                                child: Center(child: Text("Belum ada data"))),
                            4: SizedBox(
                                height: containerHeight, child: RegBarat()),
                            5: SizedBox(
                                height: containerHeight, child: RegTimur()),
                          };

                          return menus[tab] ??
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Text('Masih dalam tahap pengembangan'),
                              );
                        },
                      );
                    }),
                  ],
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
