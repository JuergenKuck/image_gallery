import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:image_gallery/src/app.dart';
import 'package:image_gallery/src/data/database_repository.dart';
import 'package:image_gallery/src/data/mock_database_repository.dart';

void main() {
  final DatabaseRepository repository = MockDatabaseRepository();

  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    setWindowTitle('Gallery App');
    double f = 1080 / 1920;
    double h0 = 850;
    double h1 = h0;
    setWindowMinSize(Size(f * h0, h0));
    setWindowMaxSize(Size(f * h1, h1));
    setWindowFrame(Rect.fromLTWH(50, 50, f * h0, h0)); // 👈 Startgröße + Position
  }

  runApp(App(repository: repository));
}
