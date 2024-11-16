
import 'dart:io';

import 'package:get/get.dart';
import '../constant/app_color.dart';
import '../constant/app_strings.dart';

Future<bool> alertExitApp() {
  bool exitApp = false ;
  Get.defaultDialog(
      title: AppStrings.exitAlert,
      middleText: AppStrings.doYouWantToExit,
      buttonColor: AppColor.primary,
      cancelTextColor: AppColor.primary,
      confirmTextColor: AppColor.white,
      onCancel: (){
        exitApp = false;
        //Get.back();
      },
      onConfirm: (){
       exit(0);
      },


  );
  return Future.value(exitApp);
}

