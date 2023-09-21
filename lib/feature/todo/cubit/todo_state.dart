part of 'todo_cubit.dart';

class TodoState extends Equatable {
  final String message;
  final NetWorkStatus status;
  final int page;
  final List<TodoModel> todoList;

  // final List<TodoModel> completeList;
  // final List<TodoModel> inProgressList;

  const TodoState({
    this.message = '',
    this.status = NetWorkStatus.initial,
    this.page = 0,
    this.todoList = const [],
    // this.completeList = const [],
    // this.inProgressList = const [],
  });

  TodoState copyWith({
    String? message,
    NetWorkStatus? status,
    int? page,
    List<TodoModel>? todoList,
  }) {
    return TodoState(
      todoList: todoList ?? this.todoList,
      status: status ?? this.status,
      page: page ?? this.page,
      message: message ?? this.message,
    );
  }

  List<TodoModel> get completeList {
    List<TodoModel> todo = [];

    todo = todoList.where((element) => element.isCompleted == true).toList();
    return todo;
  }

  List<TodoModel> get inProgressList {
    List<TodoModel> todo = [];

    todo = todoList.where((element) => element.isCompleted == false).toList();
    return todo;
  }

  @override
  List<Object?> get props => [
        message,
        status,
        page,
        todoList,
      ];
}
