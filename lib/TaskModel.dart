class TaskModel {
  TaskModel({this.taskTitle, this.taskDetails});
  String taskTitle;
  String taskDetails;
}

List<TaskModel> listData = [
  TaskModel(
    taskTitle: "Linear Algebra",
    taskDetails: "Chapter 4",
  ),
  TaskModel(
    taskTitle: "Physics",
    taskDetails: "Chapter 9",
  ),
  TaskModel(
    taskTitle: "Software Construction",
    taskDetails: "Architecture",
  ),
];