import 'package:cattle_desease/model.dart';
import 'package:cattle_desease/repo.dart';
import 'package:get/get.dart';


class SymptomController extends GetxController {
  final DetectRepo detectRepo;
  
  var isprocessing = RxBool(false);
  SymptomController({required this.detectRepo});

  var linearRegression;
  var naiveBytes;
  var randomForest;
  
  
  Map<String, dynamic> options = {};
 
  Future<void> detect() async {
    if (options.length < 5) {
     return;
    }else{
      Response? response = await detectRepo.detectDesease(options);
      linearRegression= Results.fromJson(response?.body).dtPredict;
      // print(linearRegression);
      randomForest=Results.fromJson(response?.body).rfPredict;
      naiveBytes=Results.fromJson(response?.body).nbPredict;

    if (response?.statusCode == 200) {
      update();
    } else {
      print("User orders not found");
    }
    }
    
  }

  Future<void> tect(Detect detect) async {
    Response response = await detectRepo.deaeaseDetect(detect);
  }
}


  
