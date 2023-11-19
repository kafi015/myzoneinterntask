

import 'package:flutter/material.dart';
import 'package:myzoneinterntask/ui/widgets/utils.dart';

import 'home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
   const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xffE9EBF1),
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black38,
        selectedFontSize: 14,
        unselectedFontSize: 10,
        //showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: ""),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor: primaryColor,
                  child: Icon(Icons.add,color: Colors.white,)), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: ""),
        ],
      ),
      body:screens[currentIndex],

    );
  }
}

