import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/home/controller/home_controller_impl.dart';
import 'package:todo_app/models/task_model.dart';

import 'edit_task_controller.dart';

class EditTaskControllerImpl extends EditTaskController {
  late TaskModel task;
  TextEditingController titleController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  late String initialTitle;
  late String initialDetails;
  late HomeControllerImpl homeControllerImpl;

  @override
  void onInit() {
    task = Get.arguments["task"];
    titleController.text = task.title;
    detailsController.text = task.description;
    initialTitle = task.title;
    initialDetails = task.description;
    homeControllerImpl = Get.find();
    super.onInit();
  }

  @override
  editTask() async {
    task.title =
        titleController.text.isEmpty ? initialTitle : titleController.text;
    task.description = detailsController.text.isEmpty
        ? initialDetails
        : detailsController.text;
    await task.save();
    Get.back();
    homeControllerImpl.fetchAllTasks();
    update();
  }
}
