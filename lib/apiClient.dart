import 'package:get/get.dart';



class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;

  // late Map<String,String> _mainHeaders;
  ApiClient({required this.appBaseUrl}){
    baseUrl=appBaseUrl;
    timeout=Duration(seconds: 30);
    // token = AppConstants.TOKEN;
    // _mainHeaders = {
    //   'Content-type':'application/json; charset=UTF-8',
    //   'Authorization':'Bearer $token',
    // };
  }
  Future<Response> postData(String uri, dynamic body) async {
    try{
      Response response=await post(uri, body);
      return response;
    }catch(e){
      print("cached");
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}
