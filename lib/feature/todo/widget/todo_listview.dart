import 'package:flutter/material.dart';
import 'package:to_do_application/core/models/todo_model.dart';
import 'package:to_do_application/core/theme/export.dart';

import 'todo_card.dart';

class TodoListview extends StatelessWidget {
  const TodoListview({
    Key? key,
    required this.todoList,
    required this.onItemTap,
    required this.onDeleteItem,
  }) : super(key: key);

  final List<TodoModel> todoList;
  final Function(String) onItemTap;
  final Function(String) onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      key: key,
      padding: const EdgeInsets.all(AppSpace.m),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        final TodoModel todo = todoList[index];
        return GestureDetector(
          onTap: todo.isCompleted ? null : () => onItemTap(todo.id),
          child: TodoCard(
            todo: todo,
            onDeleteItem: onDeleteItem,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return AppSpace.verticalM;
      },
    );
  }
}
