import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/core/class/request_status.dart';

import '../constant/app_strings.dart';
import '../constant/image_assets.dart';


class HandlingViewData extends StatelessWidget {
  final RequestStatus requestStatus;
  final Widget widget;

  const HandlingViewData(
      {super.key, required this.requestStatus, required this.widget});

  @override
  Widget build(BuildContext context) {
    return requestStatus == RequestStatus.loading
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Lottie.asset(ImageAssets.loading,
                      width: 200.w, height: 200.h)),
              const Center(child: Text(AppStrings.loading)),
            ],
          )
        : requestStatus == RequestStatus.offline
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Lottie.asset(ImageAssets.empty,
                          width: 200.w, height: 200.h)),
                   Center(
                      child: Text(
                    AppStrings.youAreOffline.tr,
                    style: const TextStyle(fontSize: 20),
                  )),
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
                    ],
                  )
                : requestStatus == RequestStatus.failed
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Lottie.asset(ImageAssets.empty,
                                  width: 200.w, height: 200.h)),
                           Center(
                              child: Text(
                            AppStrings.noData.tr,
                            style: const TextStyle(fontSize: 20),
                          )),
                        ],
                      )
                    : requestStatus == RequestStatus.noInternet
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Lottie.asset(ImageAssets.error,
                                      width: 200.w, height: 200.h)),
                               Center(
                                  child: Text(
                                AppStrings.noInternet.tr,
                                style: const TextStyle(fontSize: 20),
                              )),
                            ],
                          )
                        : widget;
  }
}
