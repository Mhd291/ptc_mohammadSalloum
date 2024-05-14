import 'package:flutter/material.dart';

class CtmTextFeild extends StatelessWidget {

  var name;
  CtmTextFeild({super.key,
    required this.name,
});


  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height*0.01,bottom:size.height*0.02,right:  size.width*0.06,left: size.width*0.06 ),

      child: TextField(

        decoration:InputDecoration(
          hintText: name,
          hintStyle:const TextStyle(color: Colors.grey,fontSize: 18),
        ) ,

      ),
    );
  }
}
