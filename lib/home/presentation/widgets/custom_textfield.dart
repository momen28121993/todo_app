import 'package:flutter/material.dart';
import 'package:todo_app/core/constant/app_strings.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_dimension.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  const CustomTextField({super.key, required this.hint, required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
              cursorColor:AppColor.primary ,
              maxLines: maxLines,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: AppColor.grey
                ),
                border: outlineBuildBoarder(
                  color: AppColor.primary
                ),
                focusedBorder: outlineBuildBoarder(
                  color: AppColor.primary
                )
              ),
    );
  }
}

// =================== functions ==================

OutlineInputBorder outlineBuildBoarder({required Color color}){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppSizeRadius.s12),
    borderSide: BorderSide(
      color: color
    )
  );
}