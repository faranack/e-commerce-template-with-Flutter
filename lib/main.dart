import 'dart:ui';

import 'package:ecommerce_12hours/controllers/cart_controller.dart';
import 'package:ecommerce_12hours/controllers/popular_product_controller.dart';
import 'package:ecommerce_12hours/pages/auth/sign_in_page.dart';
import 'package:ecommerce_12hours/pages/auth/sign_up_page.dart';
import 'package:ecommerce_12hours/pages/food/popular_food_detail.dart';
import 'package:ecommerce_12hours/pages/food/recommended_food_detail.dart';
import 'package:ecommerce_12hours/pages/splash/splash_page.dart';
import 'package:ecommerce_12hours/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

import 'controllers/recommended_product_controller.dart';
import 'global/app_scroll_behavior.dart';
import 'pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
// to remove #
  setPathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     Get.find<CartController>().getCartData();

    return GetBuilder<PopularProductController>(builder: (_){
      return GetBuilder<RecommendedProductController>(builder: (_){
        return GetMaterialApp(
          scrollBehavior: AppScrollBehavior(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          //home: SignInPage(),
         // home: SplashScreen(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    },);

  }
}
