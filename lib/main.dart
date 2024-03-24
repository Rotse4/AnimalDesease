import 'package:cattle_desease/authentication/auth_pages/landing%20_page.dart';
import 'package:cattle_desease/authentication/controllers/auth_controller.dart';
import 'package:cattle_desease/controllers.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:cattle_desease/depandancies.dart'as dep;


Future<void> main() async {
      await dep.init();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: 'AIzaSyCnVRreoNGeTYhib1ACe-DV0Kji4AWDPqY', 
    appId: '1:155725520547:android:a76389178cb7705dfd2916', 
    messagingSenderId:  '155725520547	',//tutnatoa kwa firebase cloud messaging
    projectId: 'cattle-disease-prediction'
    )).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<SymptomController>();
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LandingPage(),
      // home: DropDown(),
    );
  }
}



