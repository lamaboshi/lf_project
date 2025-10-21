import 'package:get/get.dart';

class SessionService extends GetxService {
  final RxBool isLoggedIn = false.obs;

  Future<SessionService> init() async {
    return this;
  }

  void signIn() => isLoggedIn.value = true;
  void signOut() => isLoggedIn.value = false;
}

