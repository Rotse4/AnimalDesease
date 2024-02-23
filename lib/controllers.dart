import 'package:cattle_desease/model.dart';
import 'package:cattle_desease/repo.dart';
import 'package:get/get.dart';


class SymptomController extends GetxController {
  final DetectRepo detectRepo;
  
  var isprocessing = RxBool(false);
  SymptomController({required this.detectRepo});
  
  Map<String, String> options = {};
 
  Future<void> detect() async {
    Response? response = await detectRepo.detectDesease(options);
    if (response?.statusCode == 200) {

      update();
    } else {
      print("User orders not found");
    }
  }

  Future<void> tect(Detect detect) async {
    Response response = await detectRepo.deaeaseDetect(detect);
  }
}