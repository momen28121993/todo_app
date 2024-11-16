import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/home/controller/home_controller_impl.dart';

import '../../../core/constant/app_dimension.dart';
import '../widgets/add_task_bottom_sheet.dart';
import '../widgets/todo_list_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomSheet();
        }, child: const Icon(Icons.add),),
      body: const ToDoListBody(),
    );
  }
}

/// ================= functions ================

openBottomSheet() {
  Get.bottomSheet(
    const AddTaskBottomSheet(),
    backgroundColor: Colors.grey.shade900,
    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(AppSizeRadius.s18), topRight: Radius.circular(AppSizeRadius.s18))),
  );
}
