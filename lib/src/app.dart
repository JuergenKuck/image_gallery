import 'package:flutter/material.dart';
import 'package:image_gallery/src/features/gallery/presentation/main_screen.dart';
import 'package:image_gallery/src/data/database_repository.dart';

class App extends StatelessWidget {
  final DatabaseRepository repository;

  const App({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen(repository: repository));
  }
}
