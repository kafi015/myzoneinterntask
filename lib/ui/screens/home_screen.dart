import 'package:flutter/material.dart';
import 'package:myzoneinterntask/ui/widgets/utils.dart';

import '../widgets/bedroom_switch_card.dart';
import '../widgets/room_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;
  bool switchValue4  = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE9EBF1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Text(
                    'Hi Johnson!',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/kafi.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Rooms!',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                      )),
                  InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 22,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RoomsCard(
                      icon: Icons.living_outlined,
                      roomTitle: 'Living Room',
                    ),
                    RoomsCard(
                      icon: Icons.bed_rounded,
                      roomTitle: 'Bedroom',
                    ),
                    RoomsCard(
                      icon: Icons.kitchen_outlined,
                      roomTitle: 'Kitchen',
                    ),
                    RoomsCard(
                      icon: Icons.bathroom_outlined,
                      roomTitle: 'Bathroom',
                    ),
                    RoomsCard(
                      icon: Icons.dining_outlined,
                      roomTitle: 'Dining Room',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'Bedroom',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Text(
                    '(4 Devices Connected)',
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  BedroomSwitchCard(
                    height: height,
                    width: width,
                    switchValue: switchValue1,
                    title: 'Smart Lighting',
                    icon: Icons.light_rounded,
                    onChanged: (value){
                      setState(() {
                        switchValue1 = value;
                      });
                    },
                    cardColor: primaryColor,
                  ),
                  BedroomSwitchCard(
                    height: height,
                    width: width,
                    switchValue: switchValue2,
                    title: 'Smart Speaker',
                    icon: Icons.speaker_group,
                    onChanged: (value){
                      setState(() {
                        switchValue2 = value;
                      });
                    },
                    cardColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [

                  BedroomSwitchCard(
                    height: height,
                    width: width,
                    switchValue: switchValue3,
                    title: 'Smart\nTV',
                    icon: Icons.tv,
                    onChanged: (value){
                      setState(() {
                        switchValue3 = value;
                      });
                    },
                    cardColor: Colors.white,
                  ),
                  BedroomSwitchCard(
                    height: height,
                    width: width,
                    switchValue: switchValue4,
                    title: 'Air\nConditioner',
                    icon: Icons.coronavirus,
                    onChanged: (value){
                      setState(() {
                        switchValue4 = value;
                      });
                    },
                    cardColor: primaryColor,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


