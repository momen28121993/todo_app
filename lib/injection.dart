import 'package:get/get.dart';
import 'core/class/data_request.dart';
import 'features/edit_task/controller/edit_task_controller_impl.dart';
import 'features/home/controller/add_task_controller/add_task_controller_impl.dart';
import 'features/home/controller/home_controller_impl.dart';

class AppBinding extends Bindings {
  @override
  void dependencies()  {
  //  Get.lazyPut(() => LoginControllerImpl(),fenix: true);
    Get.lazyPut(() => HomeControllerImpl(),fenix: true);
    Get.lazyPut(() => AddTaskControllerImpl(),fenix: true);
    Get.lazyPut(() => EditTaskControllerImpl(),fenix: true);


    /// data request injection

    Get.put(DataRequest());
    // Get.put(ItemData(Get.find()));

  }

}