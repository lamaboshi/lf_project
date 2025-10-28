import 'package:get/get.dart';
import 'package:lfl_project/src/core/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.onBoarding);
    });
  }
}
