import 'package:get/get.dart';
import 'package:qrm/app/modules/login/views/login_view.dart';
import 'package:video_player/video_player.dart';

class SplashScreenController extends GetxController {
  late VideoPlayerController videoController;
  RxBool isVideoInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    videoController = VideoPlayerController.asset('assets/images/animasi2.mp4');

videoController.initialize().then((_) {
  videoController.play();
  isVideoInitialized.value = true;

  videoController.addListener(() {
    if (videoController.value.position >= videoController.value.duration) {
      Get.off(() => LoginView());
    }
  });
}).catchError((error) {
  print("Error initializing video: $error");
});


  }

  @override
  void onClose() {
    videoController.dispose();
    super.onClose();
  }
}

