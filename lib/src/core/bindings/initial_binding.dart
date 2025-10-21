import 'package:get/get.dart';
import '../services/session_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.putAsync<SessionService>(() async => SessionService().init());
  }
}

