import 'package:cattle_desease/authentication/auth_pages/landing%20_page.dart';
import 'package:cattle_desease/authentication/controllers/auth_controller.dart';
import 'package:cattle_desease/controllers.dart';
import 'package:cattle_desease/dropdown.dart';
import 'package:cattle_desease/map_page.dart';
import 'package:cattle_desease/profile.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:cattle_desease/depandancies.dart'as dep;


Future<void> main() async {
      await dep.init();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: 'AIzaSyCbLqD-U6WN8Z-1pXbq8SjL7C7B1a0DYUc', 
    appId: '1:616391659323:android:3414f5ba80587615c9311e', 
    messagingSenderId:  '616391659323	',
    projectId: 'cattlediseaseprediction'
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



