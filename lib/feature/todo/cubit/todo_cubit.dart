import 'package:bloc/bloc.dart';
import 'package:to_do_application/core/enum/export.dart';
import 'package:uuid/uuid.dart';
import 'package:equatable/equatable.dart';
import 'package:to_do_application/core/models/todo_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoState());

  // void generateTodoList() {
  //   const int itemCount = 10;
  //
  //   List<TodoModel> todoList = List<TodoModel>.generate(
  //     itemCount,
  //     (index) => TodoModel(id: const Uuid().v1(), title: 'Task $index'),
  //   );
  //
  //   emit(state.copyWith(todoList: [...todoList]));
  // }

  void onPageChange(int page) {
    emit(state.copyWith(page: page));
  }

  void addTodo(Map<String, dynamic> value) {
    emit(state.copyWith(status: NetWorkStatus.loading));

    TodoModel todo = TodoModel(
      id: const Uuid().v1(),
      title: value['title'] ?? '',
    );

    emit(state.copyWith(todoList: [...state.todoList, todo], status: NetWorkStatus.success));
  }

  void updateTodo(String id) {
    emit(state.copyWith(status: NetWorkStatus.loading));
    int index = state.todoList.indexWhere((element) => element.id == id);
    TodoModel currentTodo = state.todoList[index];
    TodoModel newTodo = TodoModel(
      id: currentTodo.id,
      title: currentTodo.title,
      isCompleted: true,
    );
    state.todoList[index] = newTodo;

    emit(state.copyWith(todoList: [...state.todoList], status: NetWorkStatus.success));
  }

  void removeTodo(String id) {
    emit(state.copyWith(status: NetWorkStatus.loading));

    int index = state.todoList.indexWhere((element) => element.id == id);
    state.todoList.removeAt(index);

    emit(state.copyWith(todoList: [...state.todoList], status: NetWorkStatus.success));
  }
}
