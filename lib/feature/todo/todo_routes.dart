import 'package:flutter/material.dart';
import 'package:to_do_application/feature/todo/cubit/todo_cubit.dart';
import 'package:to_do_application/feature/todo/screen/todo_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Map<String, Widget Function(BuildContext)> todoRoutes = {
  "/todo": (context) {
    return BlocProvider(
      lazy: false,
      create: (_) => TodoCubit(),
      child: const TodoScreen(),
    );
  },
};
