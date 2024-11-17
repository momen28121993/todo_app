import 'package:flutter/material.dart';
import 'package:flutter_scroll_shadow/flutter_scroll_shadow.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/core/class/handling_view_data.dart';
import 'package:todo_app/core/constant/app_color.dart';
import 'package:todo_app/features/home/controller/home_controller_impl.dart';
import 'package:todo_app/features/home/presentation/widgets/todo_item.dart';

import '../../../../core/constant/app_dimension.dart';
import '../../../../core/constant/image_assets.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImpl>(
      assignId: true,
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.pad12),
          child: controller.tasks.isEmpty ?  Center(child: Lottie.asset(ImageAssets.empty),)
              :
          HandlingViewData(
              requestStatus: controller.requestStatus, widget: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizeRadius.s16),
            child: ScrollShadow(
              color: AppColor.black.withOpacity(.8),
              size: AppSizeHeight.s65,
              child: ListView.builder(
                itemCount: controller.tasks.length,
                padding: const EdgeInsets.symmetric(vertical: AppPadding.pad8),
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.pad10),
                      child: TodoItem(
                        task: controller.tasks[index],
                        onTapCard: (){},
                        onTapDelete: (){
                          controller.tasks[index].delete();
                          controller.fetchAllTasks();
                        },
                        whenCheck: (val){
                          controller.tasks[index].isDone = val!;
                          controller.tasks[index].save();
                          controller.fetchAllTasks();
                        },
                      ),
                    ),
              ),
            ),
          ), )


        );
      },
    );
  }
}