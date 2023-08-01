//import 'package:burger/pages/food_detail_page/food_detail.dart';
import 'package:burger/controllers/porpular_product_controller.dart';
import 'package:burger/dependencies/dependencies.dart';
import 'package:burger/pages/food_detail_page/recommended_food_detail.dart';
//import 'package:burger/pages/home_page/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PorpularProductControler>().getPorpularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RecommendedFoodDetail(),
    );
  }
}
