import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/constants.dart';

class AddBtn extends StatelessWidget {
  var height;
  var width;
  var onTap;
  var icon;
  AddBtn({
    required this.height,
    required this.width,
    required this.onTap,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(11),
        ),
      child:  Center(
        child: Icon(icon,color: Colors.white,),
      ),

      ),

    );
  }
}
