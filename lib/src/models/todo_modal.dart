class ToDoModal {
  String taskTodo;
  DateTime dateTodo;
  bool isCompleted;

  ToDoModal({
    required this.taskTodo,
    required this.dateTodo,
    required this.isCompleted,
  });

  // factory ToDoModal.fromJson(Map<String, dynamic> json) => ToDoModal(
  //       taskTodo: json['taskTodo'],
  //       dateTodo: json['dateTodo'],
  //       isCompleted: json[' isCompleted'],
  //     );

  // Map<String, dynamic> toJson() => {
  //       'taskTodo': taskTodo,
  //       'dateTodo': dateTodo,
  //       ' isCompleted': isCompleted,
  //     };
}
