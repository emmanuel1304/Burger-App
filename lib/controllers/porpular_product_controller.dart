import 'dart:convert';

import 'package:burger/data/repository/porpular_product_repo.dart';
import 'package:burger/models/products_model.dart';
import 'package:get/get.dart';

class PorpularProductControler extends GetxController {
  final PorpularProductRepo porpularProductRepo;
  List<dynamic> porpularProductList = [];

  PorpularProductControler({required this.porpularProductRepo});

  Future<void> getPorpularProductList() async {
    Response response = await porpularProductRepo.getporpularProductList();

    if (response.statusCode == 200) {
      String? jsonString = response.bodyString;
      List<dynamic> jsonDataList = jsonDecode(jsonString!);
      //print(response.body);
      porpularProductList = [];
      jsonDataList.forEach((jsonData) {
        Products products = Products.fromJson(jsonData);
        porpularProductList.add(products);
      });

      update();
    } else {
      //
    }
  }
}
