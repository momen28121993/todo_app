
import 'package:flutter/material.dart';

import '../../constant/app_color.dart';
import '../../constant/app_dimension.dart';
import '../../constant/app_font.dart';

class CustomTitleWidget extends StatelessWidget {
  final String title;
  final double fontSize;
  const CustomTitleWidget({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppMargin.marg5),
      child: Text(title,
        style: TextStyle(
            color: AppColor.primary,
            fontWeight: AppFontWeight.bold,
            fontSize: fontSize),
      ),
    );
  }
}
