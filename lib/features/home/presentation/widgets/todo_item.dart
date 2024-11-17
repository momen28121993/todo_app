import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/models/task_model.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_dimension.dart';
import '../../../../core/constant/app_font.dart';
import '../../../../core/constant/app_routes_name.dart';

class TodoItem extends StatelessWidget {
  final TaskModel task;
  final void Function()? onTapCard;
  final void Function()? onTapDelete;
  final void Function(bool?)? whenCheck;

  const TodoItem(
      {super.key,
      this.onTapCard,

        this.whenCheck, required this.task, this.onTapDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.pad3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeRadius.s16),
          color: AppColor.orange),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            onTap: () {
              Get.toNamed(AppRoutesNames.editTaskScreen);
            },
            contentPadding:
                const EdgeInsets.symmetric(horizontal: AppPadding.pad3)
                    .add(const EdgeInsets.only(top: AppPadding.pad20)),
            leading: Checkbox(
              value: task.isDone,
              onChanged: whenCheck,
              activeColor: AppColor.green,
              fillColor: WidgetStateProperty.all(AppColor.white),
            ),
            title: Text(
              task.title,

              style:
                  TextStyle(
                      decoration: task.isDone ? TextDecoration.lineThrough : null,
                      color: AppColor.black, fontSize: AppFontSize.s20),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: AppPadding.pad8),
              child: Text(
                  task.description,
                  style: TextStyle(
                      color: AppColor.black.withOpacity(.6),
                      fontSize: AppFontSize.s16)),
            ),
            trailing: IconButton(
                onPressed:onTapDelete,
                icon: Icon(
                  Icons.delete,
                  color: AppColor.black,
                )),
            enabled: !task.isDone,
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: AppPadding.pad8, top: AppPadding.pad20),
            child: Text(
              task.date,
              style: TextStyle(
                  color: AppColor.black.withOpacity(.4),
                  fontSize: AppFontSize.s14),
            ),
          )
        ],
      ),
    );
  }
}
