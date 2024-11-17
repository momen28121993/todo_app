import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:todo_app/core/theme/app_them.dart';

import 'app_routes.dart';
import 'core/constant/app_dimension.dart';
import 'core/services/services.dart';
import 'injection.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      /// ==== ensureScreenSize important to keyboard work normally make list view scroll when open
        ensureScreenSize: true,
        designSize: const Size(AppSize.designWidth, AppSize.designHeight),
        builder: (context, child) {
          // AppTheme appTheme = AppTheme();
          return
            GetMaterialApp(
              initialBinding: AppBinding(),
              debugShowCheckedModeBanner: false,
              title: 'PerfectChem',
              theme: AppTheme.appTheme,
              getPages: route,
            );
        });
  }
}

