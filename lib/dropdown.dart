import 'package:cattle_desease/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  SymptomController symptomController = Get.find();

  List<String> options = [
    'anorexia',
    'abdominal_pain',
    'anaemia',
    'abortions',
    // Add more options as needed...
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          for (int i = 0; i < 5; i++)
            DropdownButton<String>(
              value: symptomController.options['option${i + 1}'], // Fetch value from the controller's map
              onChanged: (String? newValue) {
                setState(() {
                  // Update the corresponding option in the controller's map
                  symptomController.options['option${i + 1}'] = newValue ?? '';
                  print(symptomController.options);
                });
              },
              items: options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            GestureDetector(
              onTap: (){
                symptomController.detect();
              },
              child: Container(
                height: 40,
                width: 40,
                color: Colors.blue,
                
              ),
            )
        ],
      ),
    );
  }
}
