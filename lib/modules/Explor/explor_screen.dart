import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/constants.dart';
import 'package:ptc_mohammad_salloum/modules/Explor/components/category_item.dart';
import 'package:get/get.dart';
class Explor extends StatelessWidget {
  const Explor({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> names = [
      "Frash Fruits",
      "Cooking Oil",
      "Meat & Fish",
      "Bakery & Snacks",
      "Dairy & Eggs",
      "Beverages",
      "Frash Fruits",
      "Frash Fruits",
      "Frash Fruits",
      "Cooking Oil",
      "Meat & Fish",
      "Bakery & Snacks",
      "Dairy & Eggs",

    ];
    List<String> imgs = [
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png",
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png",
      "1.png",

    ];
    List<Color> colors =const [
      Color(0xff53B175),
      Color(0xffF8A44C),
      Color(0xffF7A593),
      Color(0xffD3B0E0),
      Color(0xffFDE598),
      Color(0xffB7DFF5),
      Color(0xff53B175),
      Color(0xffF8A44C),
      Color(0xff53B175),
      Color(0xffF8A44C),
      Color(0xffF7A593),
      Color(0xffD3B0E0),
      Color(0xffFDE598),
    ];
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: ListView(
            children: [
             const Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Find Products",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),




              GridView.count(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(
                      names.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CategoryItem(
                          onTap: (){
                            Get.toNamed("/products");
                          },
                            height: size.height*0.2,
                            width: size.height*0.19,
                            text: names[index],
                            image: imgs[index],
                            color: colors[index]),
                      ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
