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
                child: GetBuilder<SymptomController>(
                  builder: (detected) {
                    return symptomController.options.isEmpty
                        ? GestureDetector(
                            onTap: () => Get.to(Diagnose()),
                            child: Container(
                              child: Center(child: Text("Loading...")),
                            ),
                          )
                        : GestureDetector(
                            onTap: () => Get.to(Diagnose()),
                            child: ListView(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Linear Regresion :"),
                                    Text(symptomController.linearRegression)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Random Forest :"),
                                    Text(symptomController.randomForest)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                          );
                  },
                )),
            Text(
              "Visit The nearest vateran",
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 15, left: 15, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                // height: 400,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                // child: Text("ggggg"),
                child: MapPage(),
                // child: Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //    Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Icon(Icons.location_pin, color: Colors.blue,),
                //       Text("20KM"),
                //       SizedBox(width: 30,),
                //       Text("Josh Vet", style: TextStyle(fontSize: 20),)
                //     ],
                //    ),Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Icon(Icons.location_pin, color: Colors.blue,),
                //       Text("20KM"),
                //       SizedBox(width: 30,),
                //       Text("Josh Vet", style: TextStyle(fontSize: 20),)
                //     ],
                //    ),
                //    Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Icon(Icons.location_pin, color: Colors.blue,),
                //       Text("20KM"),
                //       SizedBox(width: 30,),
                //       Text("Josh Vet", style: TextStyle(fontSize: 20),)
                //     ],
                //    ),
                //    Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Icon(Icons.location_pin, color: Colors.blue,),
                //       Text("20KM"),
                //       SizedBox(width: 30,),
                //       Text("Josh Vet", style: TextStyle(fontSize: 20),)
                //     ],
                //    )
                //   ],
                // ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
