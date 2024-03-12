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
  Map<String, String> MyMap={'Bovine Respiratory Disease (BRD)': '\ufeffCeftiofur (Excede)\xa0Chlortetracycline (Aureomycin)\xa0Chlortetracycline/sulfamethazine (AS-700)', 'Mastitis': 'Penicillin, Ampicillin, Tetracyclin or Gentamycin', 'Foot and Mouth Disease (FMD)': 'Potassium permanganate solution', 'Bovine Viral Diarrhea (BVD)': 'Support therapy in the form of fluids and anti-inflammatory agents ', "Johne's Disease (Paratuberculosis)": 'Visit the veterinary for a diagnostic test', 'Leptospirosis': 'Doxycycline or Penicillin         ', 'Infectious Bovine Rhinotracheitis (IBR)': 'BoHV-1 glycoprotein E deleted mutant marker', 'Salmonellosis': ' Ciprofloxacin, Ceftriaxone.', 'Bloat': '\xa0Simethicon, Lactase, Antacids, Laxatives, Bismuth salicylate, Prokinetics, Antispasmodics', 'Listeriosis': 'Ampicillin alone or in combination with Gentamicin', 'Heartwater': 'Oxytetracycline at 10 mg/kg/day, IM, or Doxycycline at 2 mg/kg/day ', 'Actinomycosis (Lumpy Jaw)': '\ufeffIntravenous sodium iodide.', 'Enzootic Bovine Leukosis (EBL)': 'Parenteral corticosteroids\xa0', 'Infectious Pustular Vulvovaginitis (IPV)': 'Emollient creams applied to the injured tissues and parenteral and/or local antibiotics', 'Bovine Cutaneous Papillomatosis (Teat Warts)': 'Antimony preparation (Antimony thiomalate) ', 'Bovine Infectious Keratoconjunctivitis (BIK)': 'Oxytetracyline and Florfenicol ', 'Pyometra': 'PGF2-alpha ', 'Urolithiasis': 'Acepromazine, Diazepam or Midazolam ', 'White Muscle Disease': 'Sodium selenite and Vitamin E ', 'Anemia': 'Oxytetracycline and/or Immidocarb', 'Anthrax': 'Ciprofloxacin', 'Chronic Wasting Disease': 'Lower the density of certain animal populations', 'Coenurosis (Sheep Nasal Bot Fly Larvae)': 'Ivermectin, Doramectin and Moxidectin.', 'Fluke Infestations': 'Triclabendazole', 'Nematodirus battus': 'White (1-BZ) drench', 'Piroplasmosis': 'Trypanblau', 'Porcine Epidemic Diarrhea Virus (PEDV)': 'Hypericum japonicum', 'Ringworm (Dermatophytosis)': 'Imaverol', 'Trichinosis': 'Albendazole', 'Wooden Tongue': 'Iodine therapy or Tetracyclines', 'Anaplasmosis': 'Doxycycline', 'Blackleg': ' Penicillin (10,000 IU/kg, IM)', 'Bluetongue': 'Prophylactic immunization of susceptible species', 'Bovine Papillomavirus': 'Ivermectin (IVM)', 'Caprine Arthritis Encephalitis (CAE)': ' Flunixin meglumine (1 mg/kg SID) and Aspirin (100 mg/kg PO BID)', 'Contagious Ecthyma (Orf)': ' 3% Iodophor solution or 1% Formaldehyde ', 'Mycotic Abortion': 'Visit the veterinary for a diagnostic test', 'Nitrate Poisoning': 'Methylene blue', 'Pestivirus': 'Improved biosecurity and vaccines', 'Theileriosis': 'Bbuparvaquone', 'Vibrio fetus': 'Oxytetracycline (20 mg/kg, IM)'};

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