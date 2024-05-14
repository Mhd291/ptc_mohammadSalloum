import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/modules/my_cart/components/cart_item.dart';
import 'package:ptc_mohammad_salloum/modules/my_cart/components/checkout_item.dart';
import 'package:ptc_mohammad_salloum/modules/onbording/components/start_btn.dart';
import 'package:get/get.dart';


class MyCartScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
var size =MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: SafeArea(
              child: ListView(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "My Cart",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(
                    // height: 25,
                    color: Colors.grey.withOpacity(0.4),
                    thickness: 1,
                    indent: MediaQuery.sizeOf(context).width / 200,
                    endIndent: MediaQuery.sizeOf(context).width / 200,
                  ),
                  CartItem(
                      name: "Bell Pepper Red",
                      price: "2.55",
                      image: "11.png",
                      desc: "1kg"),
                  CartItem(
                      name: "Bell Pepper Red",
                      price: "2.55",
                      image: "11.png",
                      desc: "1kg"),
                  CartItem(
                      name: "Bell Pepper Red",
                      price: "2.55",
                      image: "11.png",
                      desc: "1kg"),
                  CartItem(
                      name: "Bell Pepper Red",
                      price: "2.55",
                      image: "11.png",
                      desc: "1kg"),
                  CartItem(
                      name: "Bell Pepper Red",
                      price: "2.55",
                      image: "11.png",
                      desc: "1kg"),
                  CartItem(
                      name: "Bell Pepper Red",
                      price: "2.55",
                      image: "11.png",
                      desc: "1kg"),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: size.height*0.1,
              left: size.width*0.05,
              right: size.width*0.05,
              child: StartButton(onTap: () {
                print("lllll");
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
                                  "Checkout",
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
                        CheckoutItem(name: "Delivery"),
                        CheckoutItem(name: "Payment"),
                        CheckoutItem(name: "Promo Code"),
                        CheckoutItem(name: "Total Cost"),

                        Padding(
                          padding:  EdgeInsets.only(top: size.height*0.03),
                          child: StartButton(onTap: (){
                            Get.offNamed('/orderDone');
                          }, text: "Place Order"),
                        ),

                      ],
                    ),
                  );
                });
              }, text: 'Go to Checkout',))
        ],
      ),
    );
  }
}
