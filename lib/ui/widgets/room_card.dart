import 'package:flutter/material.dart';

class RoomsCard extends StatelessWidget {
  const RoomsCard({
    super.key,
    required this.icon,
    required this.roomTitle, required this.height, required this.width,
  });

  final double height;
  final double width;
  final IconData icon;
  final String roomTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          SizedBox(
            height: height/13,
            width: width/7,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Icon(
                icon,
                size: height/20,
              ),
            ),
          ),
          Text(roomTitle)
        ],
      ),
    );
  }
}