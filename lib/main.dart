import 'package:cattle_desease/controllers.dart';
import 'package:cattle_desease/dots.dart';
import 'package:cattle_desease/dropdown.dart';
import 'package:cattle_desease/ldotList.dart';
import 'package:cattle_desease/prac.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cattle_desease/depandancies.dart'as dep;
import 'home page.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  DropDown(),
    );
  }
}



