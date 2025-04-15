import 'package:flutter/material.dart';
import 'package:image_gallery/screen/image_screen.dart';
import 'package:image_gallery/screen/profile_screen.dart';
import 'package:image_gallery/utility/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State
  int _pageIndex = 0;

  final List<Widget> _pages = [Center(child: ImageScreen()), Center(child: ProfileScreen())];
  // Methods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          title: Text("Meine Tier-Galerie"),
          backgroundColor: AppColors.orange300,
        ),
      ),
      body: Center(child: _pages[_pageIndex]),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: kBottomNavigationBarHeight + 16,
            color: AppColors.orange300,
          ),
          NavigationBarTheme(
            data: NavigationBarThemeData(
              //height: kBottomNavigationBarHeight + 6,
              labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
                return TextStyle(
                  color: states.contains(WidgetState.selected) ? AppColors.brandBlack : AppColors.blue600,
                  fontSize: 14,
                  fontWeight: states.contains(WidgetState.selected) ? FontWeight.bold : FontWeight.normal,
                );
              }),
              iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((states) {
                return IconThemeData(
                  color: states.contains(WidgetState.selected) ? AppColors.brandBlack : AppColors.blue600,
                );
              }),
            ),
            child: NavigationBar(
              height: kBottomNavigationBarHeight + 16,
              backgroundColor: Colors.transparent,
              indicatorColor: AppColors.orange300, // Optional für aktives Icon
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              selectedIndex: _pageIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.image),
                  label: 'Bilder',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person),
                  label: 'Profil',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
