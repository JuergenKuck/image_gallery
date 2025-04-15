import 'package:flutter/material.dart';
import 'package:image_gallery/screen/main_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen());
  }
}
