import 'package:flutter/material.dart';
import 'package:image_gallery/utility/app_colors.dart';

BoxDecoration boxDecorationOrange() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [AppColors.orange300, AppColors.brand, AppColors.orange300], // Farbverlauf
      stops: [0.0, 0.5, 1.0], // Start, Mitte, Ende
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  );
}
