import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:todo_app/core/class/handling_view_data.dart';
import 'package:todo_app/core/constant/app_strings.dart';
import 'package:todo_app/features/home/controller/add_task_controller/add_task_controller_impl.dart';

import '../../../../core/constant/app_dimension.dart';
import '../../../../core/functions/valid.dart';
import 'custom_button.dart';
import 'custom_textfield.dart';


class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeWidth.s16),
      child: SingleChildScrollView(
        child: GetBuilder<AddTaskControllerImpl>(
          assignId: true,
          builder: (controller) {
            return HandlingViewData(requestStatus: controller.requestStatus,
                widget: Form(
                  key: controller.formKey,
                  autovalidateMode: controller.autoValidateMode,
                  child: Column(
                    children: [
                      Gap(AppSizeHeight.s20),
                      CustomTextField(
                        onSaved: (value){controller.title=value!;},
                        hint: AppStrings.title,
                        validator: (value){
                          return valid(AppStrings.title,1, 20,value ??"");
                        },
                        maxLines: 1,
                      ),
                      Gap(AppSizeHeight.s14),
                      CustomTextField(
                        onSaved:  (value){controller.details = value!;},
                        hint: AppStrings.details,
                        validator: (value){
                          return valid(AppStrings.title,1, 50,value ??"");
                        },
                        maxLines: 5,
                      ),
                      Gap(AppSizeHeight.s35),
                      CustomButton(onPressed: () {
                        controller.pressAddTask();
                      },),
                      Gap(AppSizeHeight.s14),
                    ],

                  ),
                ));


          },
        ),
      ),
    );
  }
}