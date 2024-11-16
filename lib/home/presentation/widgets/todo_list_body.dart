import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/constant/app_dimension.dart';
import 'package:todo_app/home/presentation/widgets/task_list_view.dart';
import '../../../core/common/widgets/custom_app_bar.dart';

class ToDoListBody extends StatelessWidget {
  const ToDoListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: AppPadding.pad24),
      child: Column(
        children: [
          Gap(AppSizeHeight.s30),
          CustomAppBar(onPressed: () {  },),
          const Expanded(child: TasksListView())
        ],
      ),
    );
  }
}




