import 'package:flutter/material.dart';

class CheckoutItem extends StatelessWidget {

var name;
CheckoutItem({
  required this.name,

});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: size.width*0.061,right: size.width*0.061,top: size.height*0.02,bottom:size.height*0.009 ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,style:  const TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w400),),
              const Row(
                children: [
                  const Icon(Icons.arrow_forward_ios),
                 // Text(desc!,style:const  TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.5,
          indent: MediaQuery.sizeOf(context).width / 17,
          endIndent: MediaQuery.sizeOf(context).width / 17,
        ),
      ],
    );
  }
}