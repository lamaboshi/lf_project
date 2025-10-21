import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class LFLApp extends StatefulWidget {
  const LFLApp({super.key});

  @override
  State<LFLApp> createState() => _LFLAppState();
}

class _LFLAppState extends State<LFLApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'LFL Project',
          theme: ThemeData(primarySwatch: Colors.blue),
          initialBinding: AppPages.initialBinding(),
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
          unknownRoute: AppPages.unknownRoute,
          defaultTransition: Transition.fadeIn,
          enableLog: true,
        );
      },
    );
  }
}
