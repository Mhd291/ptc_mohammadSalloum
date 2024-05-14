import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  String image;
  String text;
  Color color;
  var height;
  var width;
  var onTap;

  CategoryItem({
    required this.text,
    required this.image,
    required this.color,
    required this.width,
    required this.height,
    required this.onTap
});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color.withOpacity(0.3),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: color,
            width: 2,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.height*0.015,),
              Container(
                  height: size.height*0.15,
                  width: size.height*0.15,
                  child: Image.asset("assets/images/$image")),
              SizedBox(height: size.height*0.01,),
              Text(text,style: const TextStyle(fontSize: 16,color: Colors.black ),),
            ],
          ),
        ),
      ),
    );
  }
}
