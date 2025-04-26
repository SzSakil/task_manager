import 'task_model.dart';

class TaskListByStatusModel {
  String? status;
  List<TaskModel>? taskList;

  TaskListByStatusModel({this.status, this.taskList});

  TaskListByStatusModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['date'] != null) {
      taskList = <TaskModel>[];
      json['date'].forEach((v) {
        taskList!.add(TaskModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.taskList != null) {
      data['date'] = this.taskList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
