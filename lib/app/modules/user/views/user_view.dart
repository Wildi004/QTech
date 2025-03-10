import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/core/utils/extensions.dart';

import '../controllers/user_controller.dart';
import 'form_user_view.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Karyawan'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              context.openBottomSheet(const FormUserView());
            }, icon: Icon(Hi.plusSign))
          ],
        ),
        body: Obx(() {
          bool loading = controller.isLoading.value;
          final data = controller.users;

          if (loading) {
            return LzLoader.bar();
          }

          if (data.isEmpty) {
            return Empty(message: 'Tidak ada data karyawan.');
          }

          return LzListView(
            padding: Ei.zero,
            onRefresh: () => controller.getListUser(),
            children: data.generate((user, i) {
              return Container(
                padding: Ei.sym(v: 20, h: 20),
                decoration: BoxDecoration(border: Br.only(['t'], except: i)),
                child: Text(user.name ?? ''),
              );
            }),
          );
        }));
  }
}
