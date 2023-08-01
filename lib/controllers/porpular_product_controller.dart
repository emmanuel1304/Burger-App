import 'package:burger/data/repository/porpular_product_repo.dart';
import 'package:get/get.dart';

class PorpularProductControler extends GetxController {
  final PorpularProductRepo porpularProductRepo;
  List<dynamic> porpularProductList = [];

  PorpularProductControler({required this.porpularProductRepo});

  Future<void> getPorpularProductList() async {
    Response response = await porpularProductRepo.getporpularProductList();

    if (response.statusCode == 200) {
      porpularProductList = [];
      porpularProductList.addAll(response.body);
      update();
    } else {
      //
    }
  }
}
