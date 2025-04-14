import 'package:flutter/material.dart';
import 'package:image_gallery/utility/app_colors.dart';

BoxDecoration boxDecorationBlue() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [AppColors.blue300, AppColors.blue300, AppColors.blue400], // Farbverlauf
      stops: [0.0, 0.5, 1.0], // Start, Mitte, Ende
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  );
}
