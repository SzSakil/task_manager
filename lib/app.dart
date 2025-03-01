import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sing_in_screen.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == SplashScreen.name) {
          widget = const SplashScreen();
        }else if (settings.name == SingInScreen.name){
          widget = const SingInScreen();
        }
        return MaterialPageRoute(builder: (_) => widget);
      },
    );
  }
}
