import 'package:aellpr/view/user_dashboard/live_map_screen/live_map_screen.dart';
import 'package:aellpr/view/user_dashboard/profile_management/profile_screen.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/home_page.dart';
import 'package:flutter/material.dart';

import '../history_ screens/package_history.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 0;
  final pages = [
    //-- page1
    const UserDashboardScreen(),

    //-- page2
    const PackageHistory(),
    //-- page3
    const LiveMapScreen(),
    //-- page4
    const UserProfileScreen(),
  ];

  moveToNextPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        unselectedIconTheme: const IconThemeData(
            color: Color.fromARGB(
              255,
              194,
              194,
              194,
            ),
            size: 20),
        selectedIconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.primary),
        showSelectedLabels: false,
        elevation: 0,
        onTap: moveToNextPage,
        currentIndex: currentIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_document), label: "Documnet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.gps_fixed), label: "Location"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
