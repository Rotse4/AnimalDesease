import 'package:cattle_desease/controllers.dart';
import 'package:cattle_desease/profile.dart';
import 'package:cattle_desease/solution.dart';
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
    'acetone',
    'aggression',
    'arthrogyposis',
    'ankylosis',
    'anxiety',
    'bellowing',
    'blood_loss',
    'blood_poisoning',
    'blisters',
    'colic',
    'Condemnation_of_livers',
    'coughing',
    'depression',
    'discomfort',
    'dyspnea',
    'dysentery',
    'diarrhoea',
    'dehydration',
    'drooling',
    'dull',
    'decreased_fertility',
    'diffculty_breath',
    'emaciation',
    'encephalitis',
    'fever',
    'facial_paralysis',
    'frothing_of_mouth',
    'frothing',
    'gaseous_stomach',
    'highly_diarrhoea',
    'high_pulse_rate',
    'high_temp',
    'high_proportion',
    'hyperaemia',
    'hydrocephalus',
    'isolation_from_herd',
    'infertility',
    'intermittent_fever',
    'jaundice',
    'ketosis',
    'loss_of_appetite',
    'lameness',
    'lack_of-coordination',
    'lethargy',
    'lacrimation',
    'milk_flakes',
    'milk_watery',
    'milk_clots',
    'mild_diarrhoea',
    'moaning',
    'mucosal_lesions',
    'milk_fever',
    'nausea',
    'nasel_discharges',
    'oedema',
    'pain',
    'painful_tongue',
    'pneumonia',
    'photo_sensitization',
    'quivering_lips',
    'reduction_milk_vields',
    'rapid_breathing',
    'rumenstasis',
    'reduced_rumination',
    'reduced_fertility',
    'reduced_fat',
    'reduces_feed_intake',
    'raised_breathing',
    'stomach_pain',
    'salivation',
    'stillbirths',
    'shallow_breathing',
    'swollen_pharyngeal',
    'swelling',
    'saliva',
    'swollen_tongue',
    'tachycardia',
    'torticollis',
    'udder_swelling',
    'udder_heat',
    'udder_hardeness',
    'udder_redness',
    'udder_pain',
    'unwillingness_to_move',
    'ulcers',
    'vomiting',
    'weight_loss',
    'weakness'
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.grey,
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ()  {
                      Get.to(Profile());
                    },
                    child: Container(
                      height: 42,
                      width: 42,
                      child: Center(
                          child: Text(
                        "EK",
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      )),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 88, 85, 85),
                          borderRadius: BorderRadius.circular(21)),
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 42,
                    child: GestureDetector(
                      onTap: () => Get.to(Notification),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.orange,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 88, 85, 85),
                        borderRadius: BorderRadius.circular(21)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Choose your cattle symptoms",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            for (int i = 0; i < 5; i++)
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                height: 55,
                width: double.maxFinite,
                child: DropdownButton<String>(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  hint: Text("Choose"),
                  // alignment: AlignmentDirectional.bottomCenter,
                  value: symptomController.options[
                      'Symptom${i + 1}'], // Fetch value from the controller's map
                  onChanged: (String? newValue) {
                    setState(() {
                      // Update the corresponding option in the controller's map
                      symptomController.options['Symptom${i + 1}'] =
                          newValue ?? '';
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
              ),
            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),
            GestureDetector(
              onTap: () {
                symptomController.detect();
                Get.to(Solution());
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 88, 85, 85),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  "Predict",
                  style: TextStyle(color: Colors.orange),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
