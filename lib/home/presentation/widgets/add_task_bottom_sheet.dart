
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/constant/app_strings.dart';

import '../../../core/constant/app_dimension.dart';
import 'custom_button.dart';
import 'custom_textfield.dart';


class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSizeWidth.s16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(AppSizeHeight.s20),
            const CustomTextField(
              hint: AppStrings.title,
               maxLines: 1,
            ),
            Gap(AppSizeHeight.s14),
            const CustomTextField(
              hint: AppStrings.details,
              maxLines: 5,
            ),
            Gap(AppSizeHeight.s35),
            CustomButton(onPressed: (){},),
            Gap(AppSizeHeight.s14),
          ],

        ),
      ),
    );
  }
}