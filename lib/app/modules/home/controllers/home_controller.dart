import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';

class HomeController extends GetxController {
  var tabInd = 0.obs;
  final ScrollController scrollController = ScrollController();
  RxDouble backgroundHeight = 200.0.obs;
  RxInt tabIndex = 0.obs;
  var items = <Map<String, dynamic>>[
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
  ].obs;
  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          140 * 1, 
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  get tabs => null;

  get menus => null;

  void onScroll(Scroller scroll) {
    double pixel = scroll.pixels;

    if (pixel < 0) {
      backgroundHeight.value = 200 + pixel.abs();
    } else {
      backgroundHeight.value = (200 - pixel.abs()).clamp(0, 200);
    }
  }
}
