import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class DashBoardController extends GetxController{
  var tabindex=0.obs;

  void changeTabIndex(int index)
  {
    tabindex(index);
    update();
  }
  BuildContext doSomethingWithContext(BuildContext context) {
    return context;
  }

}