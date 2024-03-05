import 'package:cattle_desease/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Diagnose extends StatefulWidget {
  // SymptomController symptomController = Get.find();
   Diagnose({super.key});

  @override
  State<Diagnose> createState() => _DiagnoseState();
}

class _DiagnoseState extends State<Diagnose> {
  // SymptomController symptomController = Get.find();
  List<String> ditectedList = [];

  @override
  void initState() {
    super.initState();
    // Add item to the list within initState()
    ditectedList.add("ass");
    ditectedList.add("ass");
    ditectedList.add("ass");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Container(
        // padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15)
              ),
            ),
            Container(
              height: 400,
              child: ListView(
                          
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Linear Regresion :"),
                              Text(".linearRegression")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Random Forest :"),
                              Text("symptomController.")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Naive bytes :"),
                              Text("symptomController.naiveBytes")
                              // Text(symptomController.naiveBytes)
                            ],
                          ),
                          // ListTile(title: Text(symptomController.linearRegression)),
                          // ListTile(title: Text(symptomController.randomForest)),
                          // ListTile(title: Text(symptomController.naiveBytes)),
                    
                        ],
                      ),
            ),
                    
          ],
        ),
      ),
    );
  }
}