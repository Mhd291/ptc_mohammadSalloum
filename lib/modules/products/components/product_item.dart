import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/modules/products/components/add_btn.dart';

class ProductItem extends StatelessWidget {

  String image;
  String name;
  String desc;
  String price;

  var height;
  var width;

  ProductItem({
    required this.name,
    required this.price,
    required this.image,

    required this.width,
    required this.height,
    required this.desc
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 2,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height*0.015,),
              Center(
                child: SizedBox(
                    height: size.height*0.15,
                    width: size.height*0.15,
                    child: Image.asset("assets/images/$image")),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height*0.01,),
                  Text(name,style: const TextStyle(color: Colors.black,fontSize: 20),),
                  Text(desc,style:const TextStyle(color: Colors.grey,fontSize: 16),),
                               const Text("Price",style: TextStyle(color: Colors.grey,fontSize: 16),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price,style: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                  AddBtn(height: size.height*0.05, width: size.height*0.05, onTap: (){}, icon: Icons.add,)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
