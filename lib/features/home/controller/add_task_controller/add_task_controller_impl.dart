import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/features/home/controller/home_controller_impl.dart';
import 'package:todo_app/models/task_model.dart';

import '../../../../core/class/request_status.dart';
import '../../../../core/constant/app_strings.dart';
import 'add_task_controller.dart';

class AddTaskControllerImpl extends AddTaskController {

 late HomeControllerImpl homeControllerImpl;
  RequestStatus requestStatus = RequestStatus.none;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

   String date  = DateFormat('MMMM d, yyyy').format(DateTime.now()) ;
   bool isDone = false;
   String title = "";
   String details = "";
  var taskBox = Hive.box<TaskModel>(AppStrings.task);

  @override
  void onInit() {
    homeControllerImpl = Get.find();
    super.onInit();
  }

  @override
  addTask()async{
      await  taskBox.add(
          TaskModel(
              colorNum: 1,
              title: title,
              description: details,
              date: date,
              isDone: isDone)
      );
      Get.back();
      homeControllerImpl.fetchAllTasks();
      update();


  }

  pressAddTask()async{
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      addTask();
    }else{
      autoValidateMode = AutovalidateMode.always;
      update();
    }
  }
}