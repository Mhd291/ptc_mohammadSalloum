import 'package:flutter/material.dart';

class ImagePic extends StatelessWidget {
  const ImagePic({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: size.width*0.061,right: size.width*0.061,top: size.height*0.02,bottom:size.height*0.009 ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Image",style:  TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w400),),
              Icon(Icons.arrow_forward_ios)
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
