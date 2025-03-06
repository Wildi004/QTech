import 'package:get/get.dart';

import '../modules/absence/bindings/absence_binding.dart';
import '../modules/absence/views/absence_view.dart';
import '../modules/app/bindings/app_binding.dart';
import '../modules/app/views/app_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kasbon/bindings/kasbon_binding.dart';
import '../modules/kasbon/views/kasbon_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';
import '../modules/reg_pusat/bindings/reg_pusat_binding.dart';
import '../modules/reg_pusat/views/reg_pusat_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.APP,
      page: () => const AppView(),
      binding: AppBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ABSENCE,
      page: () => const AbsenceView(),
      binding: AbsenceBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => const ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.REG_PUSAT,
      page: () => const RegPusatView(),
      binding: RegPusatBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.KASBON,
      page: () => const KasbonView(),
      binding: KasbonBinding(),
    ),
  ];
}
