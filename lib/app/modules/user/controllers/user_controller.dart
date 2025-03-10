import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/data/apis/api.dart';
import 'package:qrm/app/data/models/user.dart';

class UserController extends GetxController with Apis {
  RxBool isLoading = true.obs;
  List<User> users = [];

  Future getListUser() async {
    try {
      isLoading.value = true;
      final res = await api.user.getListUser();
      users = User.fromJsonList(res.data);
    } catch (e, s) {
      Errors.check(e, s);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    getListUser();
    super.onInit();
  }
}
