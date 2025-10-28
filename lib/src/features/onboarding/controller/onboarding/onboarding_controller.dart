import 'package:get/get.dart';

class OnboardingController extends GetxController {
  @override
  void onReady() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed('/onBoarding');
    });
  }
}
