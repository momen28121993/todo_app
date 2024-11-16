import 'package:flutter/material.dart';

import '../widgets/todo_list_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ToDoListBody(),
    );
  }
}


