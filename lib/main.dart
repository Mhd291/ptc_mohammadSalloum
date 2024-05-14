import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ptc_mohammad_salloum/modules/Dashboard/dashboard.dart';
import 'package:ptc_mohammad_salloum/modules/Explor/explor_screen.dart';
import 'package:ptc_mohammad_salloum/modules/products/products_screen.dart';
import 'constants.dart';
import 'modules/onbording/onbording_screen.dart';
import 'modules/order_done/order_done.dart';
import 'modules/splash/splash_screen.dart';


void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:  kPrimaryColor,
        fontFamily: "Cairo",
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/onbording', page: () => Onbording()),
        GetPage(name: '/explor', page: () => Explor()),
        GetPage(name: '/dashboard', page: () => Dashboard()),
        GetPage(name: '/products', page: () => ProductsScreen()),
        GetPage(name: '/orderDone', page: () => OrderDone()),
                ],
      // builder: EasyLoading.init(),
    );
  }
}
