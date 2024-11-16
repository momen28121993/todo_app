import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/app_color.dart';
import '../constant/app_font.dart';

class AppTheme {

  static final ThemeData appTheme = ThemeData(
    //scaffoldBackgroundColor: AppColor.scaffoldBackGround,
    brightness: Brightness.dark,
    appBarTheme:AppBarTheme(
      titleTextStyle: TextStyle(color: AppColor.white , fontSize: AppFontSize.s25.sp),
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColor.white),
      backgroundColor: AppColor.primary,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    ) ,
    textTheme: TextTheme(
        headlineMedium: TextStyle(
            color: AppColor.black,
            fontWeight: AppFontWeight.bold,
            fontSize: AppFontSize.s25),
        bodySmall: TextStyle(
          fontSize: AppFontSize.s18.sp,
          color: AppColor.darkGrey,
          fontWeight: AppFontWeight.medium,
        ),
        headlineLarge: TextStyle(
          color: AppColor.black,
          fontWeight: AppFontWeight.bold,
          fontFamily: AppFontFamily.cookieFontFamily,
        ),
        headlineSmall: TextStyle(
          color: AppColor.black,
          fontSize: AppFontSize.s30.sp,
        )),
  );
}



