
import 'package:cattle_desease/controllers.dart';
import 'package:cattle_desease/diagnose.dart';
import 'package:cattle_desease/map_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Solution extends StatefulWidget {
  Solution({super.key});

  @override
  State<Solution> createState() => _SolutionState();
}

class _SolutionState extends State<Solution> {
  SymptomController symptomController = Get.find();

  List<String> ditectedList = [];

  // ditectedList.add("ass");
  // directedList.add('Item 1');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
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
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: GetBuilder<SymptomController>(
                  builder: (detected) {
                    return symptomController.predicted.isEmpty
                        ? GestureDetector(
                            onTap: () => Get.to(Diagnose()),
                            child: Container(
                              child: const Center(child: Text("Loading...")),
                            ),
                          )
                        : GestureDetector(
                            // onTap: () => Get.to(Diagnose()),
                            onTap: () {
                               Get.to(Diagnose());
                               symptomController.predicted.clear();
                               
                            },
                            child: ListView(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Linear Regresion :"),
                                    Text(symptomController.linearRegression)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Random Forest :"),
                                    Text(symptomController.randomForest)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Naive bytes :"),
                                    Text(symptomController.naiveBytes)
                                  ],
                                ),
                                // ListTile(title: Text(symptomController.linearRegression)),
                                // ListTile(title: Text(symptomController.randomForest)),
                                // ListTile(title: Text(symptomController.naiveBytes)),
                              ],
                            ),
                          );
                  },
                )),
            const Text(
              "Diagnoses",
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(right: 15, left: 15, bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  // height: 400,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "${symptomController.linearRegression} Diagnosis",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            height: 90,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(symptomController
                                        .myMap[symptomController.linearRegression] !=
                                    null
                                ? "${symptomController.myMap[symptomController.linearRegression]}"
                                : "Diagnosis not found. Research is ongoing on how to diagnose this disease."),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "${symptomController.randomForest} Diagnosis",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            height: 90,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(symptomController
                                        .myMap[symptomController.randomForest] !=
                                    null
                                ? "${symptomController.myMap[symptomController.randomForest]}"
                                : "Diagnosis not found. Research is ongoing on how to diagnose this disease."),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "${symptomController.naiveBytes} Diagnosis",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            height: 90,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            // child: Text("No known Diagnosis for this virus. Adults will recover but there is risk of it being transimitted to calfs"),
                            child: Text(symptomController
                                        .myMap[symptomController.naiveBytes] !=
                                    null
                                ? "${symptomController.myMap[symptomController.naiveBytes]}"
                                : "Diagnosis not found. Research is ongoing on how to diagnose this disease."),
                          )
                        ],
                      ),
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
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
