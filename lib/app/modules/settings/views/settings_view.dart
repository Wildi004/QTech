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
              height: MediaQuery.of(context).size.height * 0.3,
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ['4CA1AF'.hex, '808080'.hex],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
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
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.08,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LzImage(
                          'profile.png',
                          size: MediaQuery.of(context).size.height * 0.12,
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
                  SizedBox(width: MediaQuery.of(context).size.height * 0.02),
                  Transform.translate(
                    offset: Offset(
                      -MediaQuery.of(context).size.height * 0.04,
                      95,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bareel Husein, S.Kom',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.023,
                            fontWeight: Fw.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Manager IT - Pusat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02,
                          ),
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
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.01,),
                        child:  Text(
                          'Februari - 2025',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                       SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildInfoBox("2", "Hari", "Cuti",context),
                          _buildInfoBox("6", "Hari", "Izin",context),
                          _buildInfoBox("1000", "Menit", "Telat",context),
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
                          'Cuti'
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
            padding: Ei.sym(v: MediaQuery.of(context).size.width * 0.04),
            decoration: BoxDecoration(border: Br.only(['t'], except: i == 0)),
            child: Row(
              children: [
                Textr(menu.label, icon: menu.icon,style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                 Icon(Hi.arrowRight01,size: MediaQuery.of(context).size.width * 0.05,)
              ],
            ).between,
          ),
        );
      }),
    ).start;
  }
}

Widget _buildInfoBox(String number, String unit, String label,BuildContext context,) {
  double fontSizes = MediaQuery.of(context).size.width * 0.05;
  return Padding(
    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04, right: MediaQuery.of(context).size.width * 0.04),
    child: Column(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSizes,
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
            style:  TextStyle(
                color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: Fw.bold)),
      ],
    ),
  );
}
