import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/common/widgets/custom_app_bar.dart';
import 'package:todo_app/core/constant/app_strings.dart';

import '../../../../core/constant/app_dimension.dart';
import '../../../home/presentation/widgets/custom_textfield.dart';

class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditTaskBody(),
    );
  }
}

class EditTaskBody extends StatelessWidget {
  const EditTaskBody({super.key});

  @override
  Widget build(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.pad24),
        child: Column(
          children: [
            Gap(AppSizeHeight.s30),
            CustomAppBar(onPressed: (){},
              title: AppStrings.editTask,
              icon: Icons.check,
            ),
            Gap(AppSizeHeight.s30),
            const CustomTextField(
              hint: AppStrings.title,
              maxLines: 1,
            ),
            Gap(AppSizeHeight.s14),
            const CustomTextField(
              hint: AppStrings.details,
              maxLines: 5,
            ),
          ],
        ),
      );
}
