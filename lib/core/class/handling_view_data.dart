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
        ? Center(
            child: Lottie.asset(ImageAssets.loading,))
        : requestStatus == RequestStatus.offline
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Lottie.asset(ImageAssets.empty,
                          width: 200.w, height: 200.h)),
                   const Center(
                      child: Text(
                    AppStrings.youAreOffline,
                    style: TextStyle(fontSize: 20),
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
                       const Center(
                          child: Text(
                        AppStrings.serverError,
                        style: TextStyle(fontSize: 20),
                      )),
                    ],
                  )
                : requestStatus == RequestStatus.failed
                    ? Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Lottie.asset(ImageAssets.error,)),
                             const Center(
                                child: Text(
                              AppStrings.tryAgain,
                              style: TextStyle(fontSize: 20),
                            )),
                          ],
                        ),
                    )
                    : requestStatus == RequestStatus.noInternet
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Lottie.asset(ImageAssets.error,
                                      width: 200.w, height: 200.h)),
                               const Center(
                                  child: Text(
                                AppStrings.noInternet,
                                style: TextStyle(fontSize: 20),
                              )),
                            ],
                          )
                        : widget;
  }
}
