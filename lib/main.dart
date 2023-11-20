import 'package:flutter/material.dart';
import 'package:myzoneinterntask/ui/screens/spalsh_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyZone(),
    );
  }
}

class MyZone extends StatelessWidget {
  const MyZone({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

