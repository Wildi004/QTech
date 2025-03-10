import 'package:fetchly/fetchly.dart';
import 'package:get/get.dart';
import 'package:lazyui/lazyui.dart';
import 'package:qrm/app/data/apis/api.dart';
import 'package:qrm/app/data/services/storage/storage.dart';
import 'package:qrm/app/routes/app_pages.dart';

class LoginController extends GetxController with Apis {
  final forms = LzForm.make(['email', 'password']);

  // void login() {
  //   if (email.value.isNotEmpty && password.value.isNotEmpty) {
  //     Get.offNamed(Routes.APP);
  //   } else {
  //     Get.snackbar('Error', 'Email dan password harus diisi');
  //   }
  // }

  Future onSubmit() async {
    try {
      final form = forms.validate(
          required: ['*'], message: {'email': 'Email tidak boleh kosong'});

      if (form.ok) {
        Toast.overlay('Memproses...');
        final res = await api.auth.login(form.value);
        Toast.dismiss();

        if (!res.status) {
          return Toast.error(res.message);
        }

        // simpan data token ke lokal storage
        String token = res.data['token'];
        storage.write('token', token);
        storage.write('user', res.data);

        // set token ke fetchly supaya bisa mengakses api lainnya
        Fetchly.setToken(token, prefix: '');

        // set message
        Toast.success('Login berhasil');

        // pergi ke halaman dashboard
        Get.offNamed(Routes.APP);
      }
    } catch (e, s) {
      Errors.check(e, s);
    }
  }
}
