import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reg_pusat_controller.dart';

class RegPusatView extends GetView<RegPusatController> {
  const RegPusatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegPusatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegPusatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
