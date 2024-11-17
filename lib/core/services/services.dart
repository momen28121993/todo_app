
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/core/constant/app_strings.dart';

import '../../models/task_model.dart';



class MyServices extends GetxService {

  late SharedPreferences sharedPreferences ;


  Future<MyServices> init()async{

    sharedPreferences = await SharedPreferences.getInstance();

    return this ;
  }
  
}
initialServices () async{
  await  Get.putAsync(() => MyServices().init());
  await Hive.initFlutter() ;
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(AppStrings.task);

}
