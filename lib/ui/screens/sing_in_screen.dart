import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  static const String name = '/sing-in';

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child: Column(
        children: [
        ],
      ),
      ),
    );
  }
}
