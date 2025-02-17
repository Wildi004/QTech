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
}
