import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_button/counter_button.dart';
import 'package:get/get.dart';
import 'package:ptc_mohammad_salloum/modules/my_cart/components/ctm_counter.dart';
class CartItem extends StatelessWidget {
  var count = 0.obs;
  String image;
  String name;
  String desc;
  String price;

  CartItem({
    required this.name,
    required this.price,
    required this.image,


    required this.desc
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height*0.2,
          width: size.width,

          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),

               child:   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                    height: size.height*0.11,
                                    width: size.height*0.11,
                                    child: Center(child: Image.asset("assets/images/$image"))),

                              Padding(
                                padding:  EdgeInsets.only(left:size.width*0.05),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: size.height*0.01,),
                                    Text(name,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text(desc,style:const TextStyle(color: Colors.grey,fontSize: 16),),
                                    CtmCounter(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
                              Padding(
                                padding:  EdgeInsets.only(right:size.width*0.04),
                                child: Text(price,style: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                              ),

                            ],
                          )

                        ],
                      ),



            ),
          ),
        ),
        Divider(
          height: 25,
          color: Colors.grey.withOpacity(0.4),
          thickness: 1,
          indent: MediaQuery.sizeOf(context).width / 25,
          endIndent: MediaQuery.sizeOf(context).width / 25,
        ),
      ],
    );
  }
}
