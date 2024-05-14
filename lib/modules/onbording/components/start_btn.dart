import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/constants.dart';

class StartButton extends StatelessWidget {

  var onTap;
  String text;
  StartButton({super.key,
    required this.onTap,
    required this.text
});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height*0.09,
        width: size.width*0.85,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Center(
          child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),),
        ),
      ),
    );
  }
}
