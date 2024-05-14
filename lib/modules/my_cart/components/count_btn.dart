import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/constants.dart';

class CountBtn extends StatelessWidget {
  var height;
  var width;
  var onTap;
  var icon;
  var color;
  CountBtn({
    required this.height,
    required this.width,
    required this.onTap,
    required this.icon,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
          border: Border.all(
            color: Colors.grey.withOpacity(0.3),
            width: 2,
          ),
        ),
        child:  Center(
          child: Icon(icon,color: color,),
        ),

      ),

    );
  }
}
