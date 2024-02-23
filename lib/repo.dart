import 'package:cattle_desease/apiClient.dart';
import 'package:cattle_desease/app_constants.dart';
import 'package:cattle_desease/model.dart';
import 'package:get/get.dart';


class DetectRepo extends GetxService {
  final ApiClient apiClient;
  DetectRepo({required this.apiClient});

  Future<Response?> detectDesease(Map<String, dynamic> symptoms) async {
    var ndata = await apiClient.postData(AppConstants.DETECT_URI, symptoms);
    print(symptoms);
    print("ndata ${ndata.statusCode}"); 
    print("ndata ${ndata.body}"); 
    return ndata;
  }

  Future<Response> deaeaseDetect(Detect detect) async {
    return await apiClient.postData(AppConstants.BASE_URL, detect.toJson());
  }
}