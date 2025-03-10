import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';

extension CustomExtension on BuildContext {
  void confirm(
      {String? title,
      String? message,
      String? cancelText,
      String? confirmText,
      Function()? onConfirm}) {
    LzConfirm.show(this,
        title: title,
        message: message,
        cancelText: cancelText ?? 'Tidak',
        confirmText: confirmText ?? 'Ya',
        onConfirm: onConfirm);
  }

  void openBottomSheet(Widget page) {
    Get.bottomSheet(page,
        isScrollControlled: true, enableDrag: false, ignoreSafeArea: false);
  }
}
