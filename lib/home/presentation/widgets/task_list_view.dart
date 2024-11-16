import 'package:flutter/material.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:todo_app/core/constant/app_color.dart';
import 'package:todo_app/home/presentation/widgets/todo_item.dart';

import '../../../core/constant/app_dimension.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.pad12),
      child: ClipRRect(
        borderRadius:  BorderRadius.circular(AppSizeRadius.s16),
        child: ScrollShadow(
          color: AppColor.black.withOpacity(.8),
          size: AppSizeHeight.s65,
          child: ListView.builder(
            itemCount: 10,
            padding: const EdgeInsets.symmetric(vertical: AppPadding.pad8),
            itemBuilder: (context, index) =>
            const Padding(
              padding: EdgeInsets.only(bottom: AppPadding.pad10),
              child: TodoItem(),
            ),
          ),
        ),
      ),
    );
  }
}