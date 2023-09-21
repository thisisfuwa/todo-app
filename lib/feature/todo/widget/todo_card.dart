import 'package:flutter/material.dart';
import 'package:to_do_application/core/models/todo_model.dart';
import 'package:to_do_application/core/theme/export.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key? key,
    required this.todo,
    required this.onDeleteItem,
  }) : super(key: key);
  final TodoModel todo;
  final Function(String) onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: todo.isCompleted ? AppColor.greenPrimary : AppColor.whitePrimary,
        border: todo.isCompleted ? null : Border.all(color: AppColor.bluePrimary, width: 2.0),
        borderRadius: BorderRadius.circular(AppSpace.m),
      ),
      padding: const EdgeInsets.all(AppSpace.m),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Task: ${todo.title}',
              style: AppText.arial14Bold.copyWith(
                color: todo.isCompleted ? AppColor.whitePrimary : AppColor.blackPrimary,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onDeleteItem(todo.id),
            child: const Icon(
              Icons.clear_rounded,
              size: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
