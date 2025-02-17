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
    List<Map<String, dynamic>> items = [
      {
        'title': 'Sabtu Belajar !',
        'date': 'Sabtu, 4 Januari 2025',
        'location': 'Ruang Rapat LT.3 - Kantor',
      },
      {
        'title': 'Rapat Direksi !',
        'date': 'Sabtu, 4 Januari 2025',
        'location': "Q'offee Shop - Diponegoro",
      },
      {
        'title': 'Sabtu Ceria !',
        'date': 'Sabtu, Januari 2025',
        'location': 'Kuala Lumpur - Malaysia',
      },
    ];

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/ic_launcher.png'),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications,
                          color: Color.fromARGB(255, 0, 0, 0), size: 30),
                      onPressed: () {},
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      icon: Icon(Icons.logout, size: 30),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                height: 150,
                width: screenWidth * 0.9,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: ['750101'.hex,'460000'.hex],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi Bareel Husein',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Manager IT - PUSAT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sisa Saldo',
                        style: TextStyle(color: Colors.white),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          
                          'Rp. 100.000.000,-',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              color: Colors.white,
                              fontWeight: Fw.bold,
                              fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return Container(
                    width: 200,
                    height: 80,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: ['1F2C51'.hex, '5D688A'.hex],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: Caa.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (item['title']!.isNotEmpty)
                          Text(
                            item['title']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        if (item['date']!.isNotEmpty)
                          Text(
                            item['date']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        if (item['location']!.isNotEmpty) ...[
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const Icon(Icons.location_on_outlined,
                                  color: Colors.white),
                              const SizedBox(width: 5),
                              Text(
                                item['location']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Menu Favorite",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                  ),
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 30,
              runSpacing: 19,
              children: List.generate(4, (i) {
                final label = [
                  'Kasbon',
                  'Capaian Kinerja',
                  'Kategori',
                  'Surat'
                ];

                final colors = [
                  '05d4f3'.hex,
                  '92b53e'.hex,
                  'ff7f07'.hex,
                  '467bf6'.hex,
                ];

                final icons = [
                  Hi.note,
                  Hi.chartLineData02,
                  Hi.note01,
                  Hi.fileAttachment,
                ];

                return SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (i == 0) {
                            Get.toNamed(Routes.KASBON);
                          } else if (i == 1) {
                            Get.snackbar(
                                'Maaf', 'Masih dalam tahap pengembangan');
                          }
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[i],
                          ),
                          child: Icon(
                            icons[i],
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        label[i],
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 10),
            const Text(
              "Menu Regional",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Obx(() {
              int active = controller.tabIndex.value;

              return LzTabView(
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
                    padding: Ei.sym(v: 5, h: 15),
                    decoration: BoxDecoration(
                      color: isActive
                          ? const Color.fromARGB(255, 142, 18, 24)
                          : const Color.fromARGB(255, 243, 238, 238),
                      borderRadius: Br.radius(20),
                      border: Br.all(
                          color: isActive
                              ? const Color.fromARGB(255, 0, 0, 0)
                              : Colors.black),
                    ),
                    margin: Ei.only(l: i == 0 ? 0 : 10),
                    child: Text(
                      label,
                      style:
                          Gfont.color(isActive ? Colors.white : Colors.black),
                    ),
                  );
                },
              );
            }),
            const SizedBox(height: 20),
            Obx(() {
              int tab = controller.tabIndex.value;

              Map<int, Widget> menus = {
                0: SizedBox(height: 500, child: RegPusat()),
                1: SizedBox(height: 500, child: Bsd()),
                2: SizedBox(height: 500, child: FinancePusat()),
                4: SizedBox(height: 500, child: RegBarat()),
                5: SizedBox(height: 500, child: RegTimur()),



              };
              return menus[tab] ??
                  Textr('Masih dalam tahap pengembangan', padding: Ei.all(20));
            }),
          ],
        ),
      ),
    );
  }
}
