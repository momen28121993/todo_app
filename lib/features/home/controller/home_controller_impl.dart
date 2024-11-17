
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/models/task_model.dart';
import '../../../core/class/request_status.dart';
import '../../../core/constant/app_strings.dart';
import 'home_controller.dart';




class HomeControllerImpl extends HomeController {

  RequestStatus requestStatus = RequestStatus.none;

  var taskBox = Hive.box<TaskModel>(AppStrings.task);
  List<TaskModel> tasks = [];

  @override
  void onInit() {
    requestStatus = RequestStatus.loading;
    fetchAllTasks();
    super.onInit();
  }


  @override
  fetchAllTasks()async{
      requestStatus=RequestStatus.loading;
        update();
      tasks = taskBox.values.toList();
     await Future.delayed(const Duration(seconds: 1));
      requestStatus=RequestStatus.success;
      update();

  }

  //
  // void checkTask(TaskModel task, int index) {
  //   // Toggle the task's isDone status
  //   task.isDone = !task.isDone;
  //
  //   // Update the task in the Hive box at the specific index
  //   taskBox.putAt(index, task);
  //
  //   // Optionally update the UI or reload tasks
  //   update();
  //   fetchAllTasks();
  // }

}



