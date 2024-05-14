import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/constants.dart';
import 'package:ptc_mohammad_salloum/modules/my_cart/components/count_btn.dart';
import 'package:ptc_mohammad_salloum/modules/products/components/add_btn.dart';
import 'package:get/get.dart';

class CtmCounter extends StatefulWidget {
  const CtmCounter({super.key});

  @override
  State<CtmCounter> createState() => _CtmCounterState();
}

class _CtmCounterState extends State<CtmCounter> {
  var number = 0.obs;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CountBtn(
            height: size.height * 0.06,
            width: size.height * 0.06,
            onTap: () {
              if (number.value > 0) {
                number.value = number.value - 1;
              }
            },
            icon: Icons.remove,
            color: Colors.grey,
          ),
          SizedBox(width: size.width*0.05,),
          Text(
            "${number.value}",
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(width: size.width*0.05,),
          CountBtn(
            height: size.height * 0.06,
            width: size.height * 0.06,
            onTap: () {
              number.value++;
            },
            icon: Icons.add,
            color: kPrimaryColor,
          )
        ],
      );
    });
  }
}
