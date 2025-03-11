import 'package:get/get.dart';

import '../modules/absence/bindings/absence_binding.dart';
import '../modules/absence/views/absence_view.dart';
import '../modules/app/bindings/app_binding.dart';
import '../modules/app/views/app_view.dart';
import '../modules/bonus_karyawan/bindings/bonus_karyawan_binding.dart';
import '../modules/bonus_karyawan/views/bonus_karyawan_view.dart';
import '../modules/buku_bank/bindings/buku_bank_binding.dart';
import '../modules/buku_bank/views/buku_bank_view.dart';
import '../modules/cuti/bindings/cuti_binding.dart';
import '../modules/cuti/views/cuti_view.dart';
import '../modules/data_diri/bindings/data_diri_binding.dart';
import '../modules/data_diri/views/data_diri_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kasbon/bindings/kasbon_binding.dart';
import '../modules/kasbon/views/kasbon_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login_pin/bindings/login_pin_binding.dart';
import '../modules/login_pin/views/login_pin_view.dart';
import '../modules/menu_edit/bindings/menu_edit_binding.dart';
import '../modules/menu_edit/views/menu_edit_view.dart';
import '../modules/password/bindings/password_binding.dart';
import '../modules/password/views/password_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';
import '../modules/reg_pusat/bindings/reg_pusat_binding.dart';
import '../modules/reg_pusat/views/reg_pusat_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

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
      page: () => AbsenceView(),
      binding: AbsenceBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => const ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
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
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.MENU_EDIT,
      page: () => const MenuEditView(),
      binding: MenuEditBinding(),
    ),
    GetPage(
      name: _Paths.BONUS_KARYAWAN,
      page: () => BonusKaryawanView(),
      binding: BonusKaryawanBinding(),
    ),
    GetPage(
      name: _Paths.CUTI,
      page: () => CutiView(),
      binding: CutiBinding(),
    ),
    GetPage(
      name: _Paths.BUKU_BANK,
      page: () => BukuBankView(),
      binding: BukuBankBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD,
      page: () => const PasswordView(),
      binding: PasswordBinding(),
    ),
    GetPage(
      name: _Paths.DATA_DIRI,
      page: () => DataDiriView(),
      binding: DataDiriBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PIN,
      page: () =>  LoginPinView(),
      binding: LoginPinBinding(),
    ),
  ];
}
