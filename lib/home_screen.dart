import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'profil_screen.dart';
import 'favorite_screen.dart';
import 'message_screen.dart';
import 'setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<IconData> _icons = [
    Icons.person,
    Icons.favorite,
    Icons.message,
    Icons.settings,
  ];

  final List<Widget> _screens = const [
    ProfilScreen(),
    FavoriteScreen(),
    MessageScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const SizedBox.shrink(), elevation: 0),
      body: Center(child: _screens[_currentIndex]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.brightness_2), // moon icon
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: _icons,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeColor: Colors.blue,
        inactiveColor: Colors.white,
        backgroundColor: Colors.black87,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
