import 'package:cattle_desease/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'map_page.dart';

class NewPrediction extends StatefulWidget {
   NewPrediction({super.key});
  //  SymptomController symptomController = Get.find();

  @override
  State<NewPrediction> createState() => _NewPredictionState();
}

class _NewPredictionState extends State<NewPrediction> {
  SymptomController symptomController=Get.find();
  List<String> ditectedList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          // padding: EdgeInsets.only(bottom: 20),
                          height: 30,
                          width: 30,
                          // color: const Color.fromARGB(255, 211, 167, 167),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 217, 209, 209)
                          ),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      
                      const Text(
                        "Probable Desease",
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Expanded(
                    child: GetBuilder<SymptomController>(
                      builder: (detected){
                        return symptomController.predicted.isEmpty? Expanded(

                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 218, 218),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text("Loading...")),
                          ),
                        ):
                        Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: 20),
                       padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 220, 218, 218),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          Text("predicted deasease", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Text(symptomController.naiveBytes),
                          SizedBox(height: 50,),
                          Text("Diagnoses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(symptomController
                                          .myMap[symptomController.linearRegression] !=
                                      null
                                  ? "${symptomController.myMap[symptomController.randomForest]}"
                                  : "Diagnosis not found. Research is ongoing on how to diagnose this disease."),
                          ),
                          Expanded(
                            child: SizedBox()),

                          GestureDetector(
                        onTap: () => Get.to(const MapPage()),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "Nearest Vet",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,)
                        ],
                      ),
                      
                    );
                      },
                    )
                  )
          ],
        ),
      ),
    );
  }
}