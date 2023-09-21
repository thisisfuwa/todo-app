import 'package:flutter/material.dart';
import 'package:to_do_application/feature/todo/todo_routes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const AppRouter();
  }
}

class AppRouter extends StatelessWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/todo',
      navigatorKey: navigatorKey,

      /// Example Navigator.pushNamed( context, '/' );
      routes: {
        // '/': (context) => const TodoScreen(),
        ...todoRoutes,
      },
    );
  }
}
