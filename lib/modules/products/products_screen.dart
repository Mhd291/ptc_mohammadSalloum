import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc_mohammad_salloum/modules/onbording/components/start_btn.dart';
import 'package:ptc_mohammad_salloum/modules/products/components/add_btn.dart';
import 'package:ptc_mohammad_salloum/modules/products/components/product_item.dart';

import 'components/ctm_textfeild.dart';
import 'components/image_pic.dart';

class ProductsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext ctx) {
    var size = MediaQuery.of(ctx).size;
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
      "11.png",
      "22.png",
      "33.png",
      "44.png",
      "55.png",
      "66.png",
      "11.png",
      "22.png",
      "33.png",
      "44.png",
      "55.png",
      "66.png",
      "11.png",
    ];
    List<Color> colors = const [
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
      key: scaffoldKey,
      //  scaffoldState = GlobalKey<ScaffoldState>();
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                    ],
                  ),
                  const Text(
                    "Beverages",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Row(
                    children: [
                      AddBtn(
                        height: size.height * 0.04,
                        width: size.height * 0.04,
                        onTap: () {
                          scaffoldKey.currentState?.showBottomSheet((context) {
                            return Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              height: size.height * 0.65,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(size.width * 0.03),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Add",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            icon: const Icon(
                                              Icons.close,
                                              size: 30,
                                            )),
                                      ],
                                    ),

                                  ),
                                  Divider(
                                    // height: 25,
                                    color: Colors.grey.withOpacity(0.4),
                                    thickness: 1,
                                    indent: MediaQuery.sizeOf(context).width / 200,
                                    endIndent: MediaQuery.sizeOf(context).width / 200,
                                  ),
                                  CtmTextFeild(name:"Name"),
                                  CtmTextFeild(name:"Description"),
                                  CtmTextFeild(name:"Price"),
                                  ImagePic(),

                                  Padding(
                                    padding:  EdgeInsets.only(top: size.height*0.03),
                                    child: StartButton(onTap: (){}, text: "Add Item"),
                                  ),

                                ],
                              ),
                            );
                          });
                        },
                        icon: Icons.add,
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                    ],
                  ),
                ],
              ),
              GridView.count(
                childAspectRatio: 1 / 1.45,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                  names.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ProductItem(
                        name: "Diet Coke",
                        price: "1.99",
                        image: imgs[index],
                        height: size.height * 1,
                        width: size.height * 0.19,
                        desc: "355ml,"),
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
