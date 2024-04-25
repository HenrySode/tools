import 'package:flutter/material.dart';
import 'package:tools/pages/home_page.dart';
import 'package:tools/pages/profile_page.dart';
import 'package:tools/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined), label: 'Add post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user_outlined), label: 'User'),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.bottom,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('Message')),
    Center(child: Text('Add Post')),
    Center(child: Text('Favorite')),
    ProfilePage(),
  ];
}
