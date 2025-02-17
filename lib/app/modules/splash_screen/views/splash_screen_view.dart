import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    
    final SplashScreenController controller = Get.find();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        
        child: Obx(() {
          if (controller.isVideoInitialized.value) {
            return AspectRatio(
              aspectRatio: controller.videoController.value.aspectRatio,
              child: VideoPlayer(controller.videoController),
            );
          } else {
            return CircularProgressIndicator();
            
          }
          
        }),
        
      ),
      
    );
    
  }

}
