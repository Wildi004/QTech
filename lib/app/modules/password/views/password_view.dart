import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';

import '../controllers/password_controller.dart';

class PasswordView extends GetView<PasswordController> {
  const PasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PASSWORD'),
        backgroundColor: Color.fromARGB(255, 17, 107, 152),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: const Color.fromARGB(255, 17, 107, 152)),
            child: Center(
                child: Column(
              mainAxisAlignment: Maa.center,
              children: [
                Text(
                  'Bareel Husein, S. Kom',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.045,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Manager IT - PUSAT',
                  style: TextStyle(
                     color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.033),
                )
              ],
            )),
          ),
          Padding(
            padding:   EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
            child: Column(
              children: [
                LzForm.input(
                  
                  label: 'Silahkan masukan password Qtect lama anda',
                  hint: '',
                  suffix: Obscure(),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.1), // Jarak kecil antara input dan garis
                Container(
                  height: 3, // Ketebalan garis
                  width: MediaQuery.of(context).size.width * 0.7, // Memenuhi lebar parent
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.black), // Warna garis
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.11,
                ),
                Column(
                  children: [
                    LzForm.input(
                      label: 'Masukan password Q-Tech baru anda',
                      hint: '',
                      suffix: Obscure(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.06,
                    ),
                    LzForm.input(
                      label: 'Konfirmasi password Q-Tech baru anda',
                      hint: '',
                      suffix: Obscure(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LzButton(
                      onTap: () {},
                      text: 'Simpan Password',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
