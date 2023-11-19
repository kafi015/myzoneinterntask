import 'package:flutter/material.dart';
import 'package:myzoneinterntask/ui/screens/bottom_nav_bar_screen.dart';
import 'package:myzoneinterntask/ui/widgets/screen_background.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ScreenBackground(
          backgroundImage: 'assets/authentication_background.png',
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'MyZone',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: height / 2,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Easily Control\nYour Home',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: height / 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.white10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(34.0),
                          side: const BorderSide(color: Colors.white))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const BottomNavBarScreen()));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
