import 'package:cattle_desease/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Diagnose extends StatelessWidget {
  // SymptomController symptomController = Get.find();
   Diagnose({super.key});
  SymptomController symptomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: ListView(
                    
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Linear Regresion :"),
                        Text(symptomController.linearRegression)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Random Forest :"),
                        Text(symptomController.randomForest)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Naive bytes :"),
                        Text(symptomController.naiveBytes)
                      ],
                    ),
                    // ListTile(title: Text(symptomController.linearRegression)),
                    // ListTile(title: Text(symptomController.randomForest)),
                    // ListTile(title: Text(symptomController.naiveBytes)),
              
                  ],
                ),
      ),
    );
  }
}