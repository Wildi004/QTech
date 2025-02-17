import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  LazyUi.init(icon: IconType.huge); 
  
  runApp(
    GetMaterialApp(
      title: "QRM Mobile",
      theme: LzTheme.light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: LazyUi.builder,
    ),
  );
}
