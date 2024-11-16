import 'package:flutter/material.dart';
import 'package:todo_app/home/presentation/widgets/todo_item.dart';

import '../../../core/constant/app_dimension.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.symmetric(vertical: AppPadding.pad8),
      itemBuilder: (context, index) =>
      const Padding(
        padding: EdgeInsets.only(bottom: AppPadding.pad10),
        child: TodoItem(),
      ),
    );
  }
}