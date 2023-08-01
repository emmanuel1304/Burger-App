import 'package:burger/controllers/porpular_product_controller.dart';
import 'package:burger/data/api/api_client.dart';
import 'package:burger/data/repository/porpular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://luckyportfolio.pythonanywhere.com/"));

  Get.lazyPut(() => PorpularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PorpularProductControler(porpularProductRepo: Get.find()));
}
