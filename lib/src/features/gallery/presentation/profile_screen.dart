import 'package:flutter/material.dart';
import 'package:image_gallery/src/data/database_repository.dart';
import 'package:image_gallery/src/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  final DatabaseRepository repository;

  const ProfileScreen({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Card(
            shape: CircleBorder(),
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.orange600,
                  width: 1,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            "Lukas Gruber",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Fotograf",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          Text(
            repository.getProfile(),
            style: TextStyle(color: AppColors.black, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
