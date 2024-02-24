import 'package:cattle_desease/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Solution extends StatefulWidget {
   Solution({super.key});

  @override
  State<Solution> createState() => _SolutionState();
}

class _SolutionState extends State<Solution> {
  SymptomController symptomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Probable Desease",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  children: [
                    ListTile(title: Text(symptomController.linearRegression)),
                    ListTile(title: Text(symptomController.randomForest)),
                    ListTile(title: Text(symptomController.naiveBytes)),
              
                  ],
                )),
                 Text("Visit The nearest vateran", style: TextStyle(color: Colors.orange, fontSize: 18),),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 400,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                     
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
