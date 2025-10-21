import 'package:get/get.dart';
import '../bindings/initial_binding.dart';
import 'app_routes.dart';
import '../../features/not_found/not_found_view.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.splash;

  static final unknownRoute = GetPage(
    name: '/404',
    page: () => const NotFoundView(),
  );

  static final routes = <GetPage<dynamic>>[
    // GetPage(
    //   name: AppRoutes.splash,
    //   page: () => const SplashView(),
    //   binding: SplashBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.home,
    //   page: () => const HomeView(),
    //   binding: HomeBinding(),
    //   middlewares: [AuthMiddleware()],
    // ),
    // GetPage(
    //   name: AppRoutes.login,
    //   page: () => const LoginView(),
    //   binding: LoginBinding(),
    // ),
  ];

  static InitialBinding initialBinding() => InitialBinding();
}
