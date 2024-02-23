import 'package:cattle_desease/apiClient.dart';
import 'package:cattle_desease/controllers.dart';
import 'package:cattle_desease/repo.dart';
import 'package:get/get.dart';

Future<void> init() async{
  Get.lazyPut(() => ApiClient(appBaseUrl: "appBaseUrl"));
  Get.lazyPut(() => DetectRepo(apiClient: Get.find()));
  Get.lazyPut(() => SymptomController(detectRepo: Get.find()));
}