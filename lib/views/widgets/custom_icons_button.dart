import 'package:flutter/material.dart';
import 'package:flutter_class_20/constant/appcolor.dart';

class CustomIcons extends StatelessWidget {
  final Function () onPressed;
  final IconData icon;
  final String iconName;
  final bool selected;
  const CustomIcons({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.iconName,
    required this.selected,
    });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed, 
          icon: Icon(
            icon,
            color: 
              selected ? AppColor.yellowColor : AppColor.blackColor,
            ),
          ),
        Text(
          iconName,
          style: TextStyle(
            color: selected ? Colors.transparent : Colors.black,
            fontSize: 12,
            height: .01,
          ),
        ),
      ],
    );
  }
}