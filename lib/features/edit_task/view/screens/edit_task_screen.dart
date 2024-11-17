import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:todo_app/core/common/widgets/custom_app_bar.dart';
import 'package:todo_app/core/constant/app_strings.dart';

import '../../../../core/constant/app_dimension.dart';
import '../../../home/presentation/widgets/custom_textfield.dart';
import '../../controller/edit_task_controller_impl.dart';

class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
        child: GetBuilder<EditTaskControllerImpl>(
          assignId: true,
          builder: (controller) {
            return Column(
              children: [
                Gap(AppSizeHeight.s30),
                CustomAppBar(onPressed: () {
                  controller.editTask();
                },
                  title: AppStrings.editTask,
                  icon: Icons.check,
                ),
                Gap(AppSizeHeight.s30),
                CustomTextField(
                  controller: controller.titleController,
                  hint: AppStrings.title,
                  maxLines: 1,
                ),
                Gap(AppSizeHeight.s14),
                CustomTextField(
                  controller:  controller.detailsController,
                  hint: AppStrings.details,
                  maxLines: 5,
                ),
              ],
            );
          },
        ),
      );
}
