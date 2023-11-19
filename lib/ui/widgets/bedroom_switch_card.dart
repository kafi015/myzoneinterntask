import 'package:flutter/material.dart';
import 'package:myzoneinterntask/ui/widgets/utils.dart';

class BedroomSwitchCard extends StatelessWidget {
  const BedroomSwitchCard({
    super.key,
    required this.height,
    required this.width,
    required this.switchValue,
    required this.icon,
    required this.title,
    required this.onChanged, required this.cardColor,
  });

  final double height;
  final double width;
  final bool switchValue;
  final IconData icon;
  final String title;
  final Function(bool) onChanged;
  final Color cardColor;


  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: SizedBox(
          height: height/4.6,
          width: width / 2.5,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height/60,
                    ),
                    Icon(
                      icon,
                      color: cardColor == Colors.white? primaryColor: Colors.white,
                      size: height/15,
                    ),
                    SizedBox(
                      height: height/60,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          color: cardColor == Colors.white? primaryColor : Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: height/45),
                    ),
                     SizedBox(
                      height: height/60,
                    ),
                    Row(
                      children: [
                        Text(
                          switchValue ? 'On' : 'Off',
                          style:  TextStyle(
                              color: cardColor == Colors.white? primaryColor : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: height/45),
                        ),
                        const Spacer(),
                        Container(
                          height: height/50,
                          width: width/10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34.0),
                            border: Border.all(color: cardColor == Colors.white? primaryColor : Colors.white)
                          ),
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: cardColor == Colors.white? primaryColor : Colors.white,
                            activeTrackColor: cardColor == Colors.white? Colors.white : primaryColor,
                            inactiveThumbColor: cardColor == Colors.white? primaryColor : Colors.white,
                            inactiveTrackColor: cardColor == Colors.white? Colors.white : primaryColor,
                            splashRadius: height/50,
                            // boolean variable value
                            value: switchValue, // changes the state of the switch
                            onChanged: onChanged,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}