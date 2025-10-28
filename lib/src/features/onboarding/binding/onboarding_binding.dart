import 'package:get/get.dart';
import 'package:lfl_project/src/features/onboarding/controller/onboarding/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}
