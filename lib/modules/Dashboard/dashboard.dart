import 'package:flutter/material.dart';
import 'package:ptc_mohammad_salloum/modules/Explor/explor_screen.dart';
import 'package:ptc_mohammad_salloum/modules/my_cart/my_cart_screen.dart';
import 'package:ptc_mohammad_salloum/modules/onbording/onbording_screen.dart';
import 'package:ptc_mohammad_salloum/modules/products/products_screen.dart';
import '../../constants.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../order_done/order_done.dart';

class Dashboard extends StatelessWidget {

  //DashBoardController controller =DashBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(

        tabs: [
          PersistentTabConfig(
            screen: const Explor(),
            item: ItemConfig(
              activeForegroundColor:kPrimaryColor,
              icon: const Icon(Icons.manage_search_sharp,color: kPrimaryColor,),
              title: "Explore",
            ),
          ),
          PersistentTabConfig(
            screen: MyCartScreen(),
            item: ItemConfig(
              activeForegroundColor:kPrimaryColor,
              icon: const Icon(Icons.shopping_cart,color: kPrimaryColor,),
              title: "Cart",
            ),
          ),


        ],
        navBarBuilder: (navBarConfig) => Style6BottomNavBar(

          navBarDecoration: NavBarDecoration(


          ),
          navBarConfig: navBarConfig,
        ),
      ),



      extendBody: true,
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(top: 0.2),

      ),

    );
  }
}