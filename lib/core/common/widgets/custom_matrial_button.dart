

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/constant/app_color.dart';
import '../../constant/app_dimension.dart';

class CustomMaterialButton extends StatelessWidget {
  final String name ;
  final void Function()? onPressed;
  const CustomMaterialButton({Key? key, required this.name, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal:AppPadding.pad20 ),
      margin:  EdgeInsets.only(top: AppMargin.marg16.h),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizeWidth.s20)),
        color: AppColor.primary,
        textColor: AppColor.white,
        child: Text(name,
        ),
      ),
    );
  }
}