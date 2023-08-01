import 'package:burger/data/api/api_client.dart';
import 'package:get/get.dart';

class PorpularProductRepo extends GetxService {
  final ApiClient apiClient;

  PorpularProductRepo({required this.apiClient});

  Future<Response> getporpularProductList() async {
    return await apiClient.getData("projects/");
  }
}
