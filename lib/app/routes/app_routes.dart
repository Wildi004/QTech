// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const APP = _Paths.APP;

  static const HOME = _Paths.HOME;
  static const ABSENCE = _Paths.ABSENCE;
  static const PRODUCT = _Paths.PRODUCT;
  static const SETTINGS = _Paths.SETTINGS;
  static const REG_PUSAT = _Paths.REG_PUSAT;
  static const LOGIN = _Paths.LOGIN;
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const KASBON = _Paths.KASBON;
  static const USER = _Paths.USER;
  static const KARYAWAN = _Paths.KARYAWAN;
  static const MENU_EDIT = _Paths.MENU_EDIT;
  static const BONUS_KARYAWAN = _Paths.BONUS_KARYAWAN;
  static const CUTI = _Paths.CUTI;
  static const BUKU_BANK = _Paths.BUKU_BANK;
  static const PASSWORD = _Paths.PASSWORD;
  static const DATA_DIRI = _Paths.DATA_DIRI;
  static const LOGIN_PIN = _Paths.LOGIN_PIN;
}

abstract class _Paths {
  _Paths._();
  static const APP = '/';

  static const HOME = '/home';
  static const ABSENCE = '/absence';
  static const PRODUCT = '/product';
  static const SETTINGS = '/settings';
  static const REG_PUSAT = '/reg-pusat';
  static const LOGIN = '/login';
  static const SPLASH_SCREEN = '/splash-screen';
  static const KASBON = '/kasbon';
  static const USER = '/user';
  static const KARYAWAN = '/karyawan';
  static const MENU_EDIT = '/menu-edit';
  static const BONUS_KARYAWAN = '/bonus-karyawan';
  static const CUTI = '/cuti';
  static const BUKU_BANK = '/buku-bank';
  static const PASSWORD = '/password';
  static const DATA_DIRI = '/data-diri';
  static const LOGIN_PIN = '/login-pin';
}
