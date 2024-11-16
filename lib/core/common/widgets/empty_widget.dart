import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../constant/app_color.dart';
import '../../constant/app_strings.dart';
import '../../constant/image_assets.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Lottie.asset(ImageAssets.empty,
                width: 200.w, height: 200.h)),
         Center(
            child: Text(
              AppStrings.noItems.tr,
              style: TextStyle(fontSize: 30,color: AppColor.red),
            )),
      ],
    );
  }
}
