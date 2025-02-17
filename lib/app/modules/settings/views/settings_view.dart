import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/modules/settings/controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 230,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ['1C1818'.hex, '960000'.hex],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LzImage(
                          'profile.png',
                          size: 90,
                          radius: 50,
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Edit Foto',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Transform.translate(
                    offset: const Offset(
                      -30,
                      95,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bareel Husein, S.Kom',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: Fw.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Manager IT - Pusat',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 131, 15, 15),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [],
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  width: screenWidth * 0.9,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: ['111D3F'.hex, '2D4DA5'.hex],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Februari - 2025',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoBox("2", "Hari", "Cuti"),
                          _buildInfoBox("6", "Hari", "Izin"),
                          _buildInfoBox("1000", "Menit", "Telat"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: LzListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text('Umum', style: Gfont.fs20.bold),
                      AccountOption(
                        options: [
                          'Pengaturan',
                          'Keamanan',
                          'Notifikasi',
                        ].generate((l, i) => Menu(
                            l,
                            [
                              Hi.settings01,
                              Hi.informationDiamond,
                              Hi.informationCircle,
                            ][i])),
                      ),
                      Text('Menu', style: Gfont.fs20.bold),
                      AccountOption(
                        options: [
                          'Data Diri',
                          'Password',
                          'Buku Bank',
                          'Bonus',
                          'Cuti',
                        ].generate((l, i) => Menu(
                            l,
                            [
                              Hi.user,
                              Hi.securityPassword,
                              Hi.bank,
                              Hi.moneyAdd02,
                              Hi.noteDone
                            ][i])),
                      ),
                    ],
                  ).start.gap(25),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Menu {
  final String label;
  final IconData icon;

  const Menu(this.label, this.icon);

  static List<Menu> list(
      {required List<String> labels, required List<IconData> icons}) {
    return List.generate(labels.length, (i) => Menu(labels[i], icons[i]));
  }
}

class AccountOption extends StatelessWidget {
  final List<Menu> options;
  const AccountOption({super.key, this.options = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: options.generate((menu, i) {
        return Touch(
          key: ValueKey('menu_$i'),
          onTap: () {},
          hoverable: true,
          child: Container(
            padding: Ei.sym(v: 15),
            decoration: BoxDecoration(border: Br.only(['t'], except: i == 0)),
            child: Row(
              children: [
                Textr(menu.label, icon: menu.icon),
                const Icon(Hi.arrowRight01)
              ],
            ).between,
          ),
        );
      }),
    ).start;
  }
}

Widget _buildInfoBox(String number, String unit, String label) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Column(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: number,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " $unit",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Text(label,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: Fw.bold)),
      ],
    ),
  );
}
