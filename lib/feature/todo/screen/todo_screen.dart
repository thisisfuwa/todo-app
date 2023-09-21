import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_application/core/enum/export.dart';
import 'package:to_do_application/core/theme/export.dart';
import 'package:to_do_application/feature/todo/cubit/todo_cubit.dart';
import 'package:to_do_application/feature/todo/widget/todo_listview.dart';

import '../widget/tab_item.dart';
import '../widget/todo_form_dialog.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: BlocBuilder<TodoCubit, TodoState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppSpace.verticalM,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TabItem(
                        label: 'In Progress task',
                        onTap: () => context.read<TodoCubit>().onPageChange(0),
                        onSelected: state.page == 0,
                      ),
                    ),
                    Expanded(
                      child: TabItem(
                        label: 'Completed task',
                        onTap: () => context.read<TodoCubit>().onPageChange(1),
                        onSelected: state.page == 1,
                      ),
                    ),
                  ],
                ),
                state.status.isLoading

                    /// Loading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.todoList.isEmpty

                        /// Empty Task
                        ? const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: AppSpace.xl,
                              horizontal: AppSpace.m,
                            ),
                            child: Text(
                              'Today is no Task :>',
                              textAlign: TextAlign.center,
                            ),
                          )

                        /// Render Task list here
                        : TodoListview(
                            key: const Key('todo-list'),
                            todoList: state.page == 0 ? state.inProgressList : state.completeList,
                            onItemTap: (id) => context.read<TodoCubit>().updateTodo(id),
                            onDeleteItem: (id) => context.read<TodoCubit>().removeTodo(id),
                          ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        key: const Key('add-button'),
        onPressed: () async {
          /// Add Task dialog
          showDialog(
            context: context,
            builder: (_) {
              return BlocProvider.value(
                value: BlocProvider.of<TodoCubit>(context),
                child: const TodoFormDialog(),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
