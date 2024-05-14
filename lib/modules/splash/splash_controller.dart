import 'package:get/get.dart';

class SplashController extends GetxController {
  var checkUser =true.obs;

  void onInit() async {

    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();

  }
  Future<bool> checkToken() async {
   return true;
  }

}
