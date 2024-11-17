import 'package:hive/hive.dart';

part 'task_model.g.dart';


@HiveType(typeId: 0)
class TaskModel extends HiveObject {

  @HiveField(0)
   String title;

  @HiveField(1)
   String description;

  @HiveField(2)
  final String date;

  @HiveField(3)
    bool isDone ;

  @HiveField(4)
  final int colorNum ;

  TaskModel({
    required this.colorNum,
    required this.title,
    required this.description,
    required this.date,
      this.isDone = false,
  });
}