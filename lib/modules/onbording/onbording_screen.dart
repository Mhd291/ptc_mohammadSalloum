import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/modules/onbording/components/start_btn.dart';
import 'package:get/get.dart';
class Onbording extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,left: 0,right: 0,bottom: 0,
            child: Image.asset(
              'assets/images/onbording.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 0,right: 0, bottom: size.height*0.07,
              child: Column(

            children: [
              Image.asset('assets/images/carrot.png'),
              const Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 48),),
              const Text("to our store",style: TextStyle(color: Colors.white,fontSize: 48),),
              const Text("Ger your groceries in as fast as one hour",style: TextStyle(color: Color(0xfffcfcfc),fontSize: 18),),
              SizedBox(height:size.height*0.04,),
              StartButton(onTap: (){
                Get.offNamed("/dashboard");
              }, text: "Get Started"),
            ],
          ))
        ],
      ),
    );
  }
}
