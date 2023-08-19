import 'package:flutter/material.dart';
import 'package:iti_final_project/resources/constants/app_constants.dart';
import 'package:iti_final_project/view/pages/home_screen.dart';
import 'package:iti_final_project/view/pages/profile_screen.dart';

import 'category_screen.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int currentindex = 0;
  List<Widget> pages =[
    HomeScreen(),
    CategoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentindex,
        onDestinationSelected: (currentindex) => setState(() => this.currentindex = currentindex),
        height: 60,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: kPrimaryColor), // Set icon color
            selectedIcon: Icon(Icons.home, color: kPrimaryColor), // Set selected icon color
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.category_outlined, color: kPrimaryColor), // Set icon color
            selectedIcon: Icon(Icons.category, color: kPrimaryColor), // Set selected icon color
            label: 'Category',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined, color: kPrimaryColor), // Set icon color
            selectedIcon: Icon(Icons.person, color: kPrimaryColor), // Set selected icon color
            label: 'Profile',
          ),
        ],
      ),
      body: pages[currentindex],
    );
  }
}

