import 'package:get/get.dart';



class ApiClient extends GetConnect implements GetxService{
  final String appBaseUrl;

  // late Map<String,String> _mainHeaders;
  ApiClient({required this.appBaseUrl}){
    baseUrl=appBaseUrl;
    // print
    timeout=Duration(seconds: 30);

  }
  Future<Response> postData(String uri, dynamic body) async {
    print(uri);
    try{
      Response response=await post(uri, body);
      return response;
    }catch(e){
      print("cached");
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}
