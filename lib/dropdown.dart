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

  List<String> options = ['anorexia','abdominal_pain','anaemia','abortions','acetone','aggression','arthrogyposis',
    'ankylosis','anxiety','bellowing','blood_loss','blood_poisoning','blisters','colic','Condemnation_of_livers',
    'coughing','depression','discomfort','dyspnea','dysentery','diarrhoea','dehydration','drooling',
    'dull','decreased_fertility','diffculty_breath','emaciation','encephalitis','fever','facial_paralysis','frothing_of_mouth',
    'frothing','gaseous_stomach','highly_diarrhoea','high_pulse_rate','high_temp','high_proportion','hyperaemia','hydrocephalus',
    'isolation_from_herd','infertility','intermittent_fever','jaundice','ketosis','loss_of_appetite','lameness',
    'lack_of-coordination','lethargy','lacrimation','milk_flakes','milk_watery','milk_clots',
    'mild_diarrhoea','moaning','mucosal_lesions','milk_fever','nausea','nasel_discharges','oedema',
    'pain','painful_tongue','pneumonia','photo_sensitization','quivering_lips','reduction_milk_vields','rapid_breathing',
    'rumenstasis','reduced_rumination','reduced_fertility','reduced_fat','reduces_feed_intake','raised_breathing','stomach_pain',
    'salivation','stillbirths','shallow_breathing','swollen_pharyngeal','swelling','saliva','swollen_tongue',
    'tachycardia','torticollis','udder_swelling','udder_heat','udder_hardeness','udder_redness','udder_pain','unwillingness_to_move',
    'ulcers','vomiting','weight_loss','weakness'];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.grey,
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            for (int i = 0; i < 5; i++)
              DropdownButton<String>(
                value: symptomController.options['Symptom${i + 1}'], // Fetch value from the controller's map
                onChanged: (String? newValue) {
                  setState(() {
                    // Update the corresponding option in the controller's map
                    symptomController.options['Symptom${i + 1}'] = newValue ?? '';
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
      ),
    );
  }
}
