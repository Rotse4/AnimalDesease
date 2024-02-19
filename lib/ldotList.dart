import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySelectOptions extends StatefulWidget {
  @override
  _MySelectOptionsState createState() => _MySelectOptionsState();
}

class _MySelectOptionsState extends State<MySelectOptions> {
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
  late List<bool> selectedOptions;

  @override
  void initState() {
    super.initState();
    // Initialize selectedOptions with all false values
    selectedOptions = List<bool>.filled(options.length, false);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Cattle symptoms'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: options.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              title: Text(options[index]),
              value: selectedOptions[index],
              onChanged: (value) {
                setState(() {
                  selectedOptions[index] = value!;
                });
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Do something with selectedOptions
          print(selectedOptions);
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
