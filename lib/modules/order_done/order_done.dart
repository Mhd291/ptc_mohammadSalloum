import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/modules/onbording/components/start_btn.dart';
import 'package:get/get.dart';
class OrderDone extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return  Scaffold(
      body: Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height*0.15,

              ),
              Padding(
                padding:  EdgeInsets.only(right: size.width*0.07),
                child: SizedBox(
                  height: size.height*0.27,
                  width:size.height*0.27,
                  child: Image.asset("assets/images/done.png"),
                ),
              ),
              SizedBox(
                height: size.height*0.05,

              ),
              const Text("Your Order has been",style: TextStyle(color: Colors.black,fontSize: 28),),

              const Text("accepted",style: TextStyle(color: Colors.black,fontSize: 28),),
              SizedBox(
                height: size.height*0.01,

              ),
              const Text("Your items has been placcd and is on ",style: TextStyle(color: Colors.grey,fontSize: 16),),

              const Text("it’s way to being processed",style: TextStyle(color: Colors.grey,fontSize: 16),),
              SizedBox(
                height: size.height*0.09,

              ),
              StartButton(onTap: (){}, text: "Track Order"),
              SizedBox(
                height: size.height*0.02,

              ),
              GestureDetector(
                  onTap: (){
                    Get.offNamed("/dashboard");
                  },
                  child: const Text("Back to home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),


            ],
          ),
        ),
      ),
    );
  }
}
