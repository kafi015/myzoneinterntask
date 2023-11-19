import 'package:flutter/material.dart';
import 'package:myzoneinterntask/ui/screens/bottom_nav_bar_screen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyZone(),
    );
  }
}

class MyZone extends StatelessWidget {
  const MyZone({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomNavBarScreen();
  }
}

