import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../services/session_service.dart';
import '../app_routes.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final session = Get.find<SessionService>();
    if (!session.isLoggedIn.value && route != AppRoutes.login) {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
