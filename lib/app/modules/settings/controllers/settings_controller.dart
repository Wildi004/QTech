import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/data/apis/api.dart';
import 'package:qrm/app/data/services/storage/auth.dart';

class SettingsController extends GetxController with Apis {
  RxDouble height = 200.0.obs;

  void adjustHeader(double value) {
    height.value = value;
    Future getUserLogged() async {
      try {
        final auth = await Auth.user();
        final res = await api.user.getData(auth.id!);
      } catch (e, s) {
        Errors.check(e, s);
      }
    }

    Future onPageInit() async {
      try {
        await getUserLogged();
      } catch (e, s) {
        Errors.check(e, s);
      }
    }
  }
}
