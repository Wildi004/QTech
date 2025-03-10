import 'package:flutter/material.dart';
import 'package:lazyui/lazyui.dart';

class MenuEditView extends StatelessWidget {
  const MenuEditView({super.key});

  @override
  Widget build(BuildContext context) {
    final label = [
      'Dashboar Umum',
      'Anggaran Departemen',
      'Monitoring Proyek',
      'Capaian Kinerja',
      'Notulen',
      'Harga Modal Logistik',
      'Brosur Logistik',
      'Daftar TDKN',
      'Surat Internal',
      'Job Desk',
      'SK Direksi',
      'Data Mandor',
      'Panduan Intalasi',
      'Pengumuman'
    ];

    final colors = [
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
      '9f68dd'.hex,
    ];

    final icons = [
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
      Hi.note,
    ];

    return Scaffold(
     
      body: LzListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, left: 20),
          child: Wrap(
            spacing: 20,
            runSpacing: 25,
            children: List.generate(label.length, (i) {
              final itemWidth =
                  (MediaQuery.of(context).size.width - (20 * 1)) / 6;

              return SizedBox(
                width: itemWidth,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (i == 0) {}
                      },
                      child: Container(
                        width: 59,
                        height: 59,
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
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ]),
    );
  }
}
