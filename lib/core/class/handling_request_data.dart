import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/core/class/request_status.dart';

import '../common/widgets/loading_widget.dart';
import '../constant/app_color.dart';
import '../constant/app_routes_name.dart';
import '../constant/app_strings.dart';
import '../constant/image_assets.dart';


class HandlingRequestData extends StatelessWidget {
  final RequestStatus requestStatus;
  final Widget widget;

  const HandlingRequestData(
      {super.key, required this.requestStatus, required this.widget});

  @override
  Widget build(BuildContext context) {
    return requestStatus == RequestStatus.loading
        ? const LoadingWidget()
        : requestStatus == RequestStatus.offline
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Lottie.asset(ImageAssets.empty,
                        width: 200.w, height: 200.h),
                  ),
                   Center(
                      child: Text(
                    AppStrings.youAreOffline.tr,
                    style: const TextStyle(fontSize: 20),
                  )),
                  MaterialButton(
                      color: AppColor.primary,
                      onPressed: () {
                        requestStatus == RequestStatus.none;
                        Get.offAndToNamed(AppRoutesNames.homeScreen);
                      },
                      child:  Text(AppStrings.refresh.tr,style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ],
              )
            : requestStatus == RequestStatus.serverFailure
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Lottie.asset(ImageAssets.error,
                              width: 200.w, height: 200.h)),
                       Center(
                          child: Text(
                        AppStrings.serverError.tr,
                        style: const TextStyle(fontSize: 20),
                      )),
                      MaterialButton(
                        color: AppColor.primary,
                          onPressed: () {
                            requestStatus == RequestStatus.none;
                            Get.offAndToNamed(AppRoutesNames.homeScreen);
                          },
                          child:  Text(AppStrings.refresh.tr,style: TextStyle(
                            color: AppColor.white,
                            fontWeight: FontWeight.bold
                          ),)),
                    ],
                  )
                : widget;
  }
}
