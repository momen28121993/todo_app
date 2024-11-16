import 'package:flutter/material.dart';
import 'package:todo_app/core/constant/app_dimension.dart';
import 'package:todo_app/core/constant/app_strings.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;

  const CustomButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizeRadius.s12)),
      minWidth: MediaQuery.of(context).size.width,
      height: AppSizeHeight.s50,
      onPressed: onPressed,
      color: AppColor.primary,
      child: Text(
        AppStrings.add,
        style: TextStyle(
            color: AppColor.black,
            fontSize: AppFontSize.s20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
