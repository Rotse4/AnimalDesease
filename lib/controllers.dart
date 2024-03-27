import 'package:cattle_desease/model.dart';
import 'package:cattle_desease/repo.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SymptomController extends GetxController {
  final DetectRepo detectRepo;

  var isprocessing = RxBool(false);
  SymptomController({required this.detectRepo});

  var linearRegression;
  var naiveBytes;
  var randomForest;
  Map<String, String> myMap = {
    'schmallen_berg_virus':
        'Malformations affecting calves exposed to the virus in pregnancy may lead to calving difficulties. Excessive force must not be used as this may risk injury to both the cow and calf.',
    'Bovine Respiratory Disease (BRD)':
        '\ufeffCeftiofur (Excede)\xa0Chlortetracycline (Aureomycin)\xa0Chlortetracycline/sulfamethazine (AS-700)',
    'Mastitis': 'Penicillin, Ampicillin, Tetracyclin or Gentamycin',
    'Foot and Mouth Disease (FMD)': 'Potassium permanganate solution',
    'Bovine Viral Diarrhea (BVD)':
        'Support therapy in the form of fluids and anti-inflammatory agents ',
    "Johne's Disease (Paratuberculosis)":
        'Visit the veterinary for a diagnostic test',
    'Leptospirosis': 'Doxycycline or Penicillin         ',
    'Infectious Bovine Rhinotracheitis (IBR)':
        'BoHV-1 glycoprotein E deleted mutant marker',
    'Salmonellosis': ' Ciprofloxacin, Ceftriaxone.',
    'Bloat':
        '\xa0Simethicon, Lactase, Antacids, Laxatives, Bismuth salicylate, Prokinetics, Antispasmodics',
    'Listeriosis': 'Ampicillin alone or in combination with Gentamicin',
    'Heartwater':
        'Oxytetracycline at 10 mg/kg/day, IM, or Doxycycline at 2 mg/kg/day ',
    'Actinomycosis (Lumpy Jaw)': '\ufeffIntravenous sodium iodide.',
    'Enzootic Bovine Leukosis (EBL)': 'Parenteral corticosteroids\xa0',
    'Infectious Pustular Vulvovaginitis (IPV)':
        'Emollient creams applied to the injured tissues and parenteral and/or local antibiotics',
    'Bovine Cutaneous Papillomatosis (Teat Warts)':
        'Antimony preparation (Antimony thiomalate) ',
    'Bovine Infectious Keratoconjunctivitis (BIK)':
        'Oxytetracyline and Florfenicol ',
    'Pyometra': 'PGF2-alpha ',
    'Urolithiasis': 'Acepromazine, Diazepam or Midazolam ',
    'White Muscle Disease': 'Sodium selenite and Vitamin E ',
    'Anemia': 'Oxytetracycline and/or Immidocarb',
    'Anthrax': 'Ciprofloxacin',
    'Chronic Wasting Disease':
        'Lower the density of certain animal populations',
    'Coenurosis (Sheep Nasal Bot Fly Larvae)':
        'Ivermectin, Doramectin and Moxidectin.',
    'Fluke Infestations': 'Triclabendazole',
    'Nematodirus battus': 'White (1-BZ) drench',
    'Piroplasmosis': 'Trypanblau',
    'Porcine Epidemic Diarrhea Virus (PEDV)': 'Hypericum japonicum',
    'Ringworm (Dermatophytosis)': 'Imaverol',
    'Trichinosis': 'Albendazole',
    'Wooden Tongue': 'Iodine therapy or Tetracyclines',
    'Anaplasmosis': 'Doxycycline',
    'Blackleg': ' Penicillin (10,000 IU/kg, IM)',
    'Bluetongue': 'Prophylactic immunization of susceptible species',
    'Bovine Papillomavirus': 'Ivermectin (IVM)',
    'Caprine Arthritis Encephalitis (CAE)':
        ' Flunixin meglumine (1 mg/kg SID) and Aspirin (100 mg/kg PO BID)',
    'Contagious Ecthyma (Orf)': ' 3% Iodophor solution or 1% Formaldehyde ',
    'Mycotic Abortion': 'Visit the veterinary for a diagnostic test',
    'Nitrate Poisoning': 'Methylene blue',
    'Pestivirus': 'Improved biosecurity and vaccines',
    'Theileriosis': 'Bbuparvaquone',
    'Vibrio fetus': 'Oxytetracycline (20 mg/kg, IM)'
  };

  Map<dynamic, dynamic> options = {};
  List<String> predicted=[];

  Future<void> detect() async {
    if (options.length < 5) {
      return;
    } else {
      Response? response = await detectRepo.detectDesease(options);
      linearRegression = Results.fromJson(response?.body).dtPredict;
      randomForest = Results.fromJson(response?.body).rfPredict;
      naiveBytes = Results.fromJson(response?.body).nbPredict;
      // naiveBytes = "Mastitis";
      predicted.add(linearRegression);
      predicted.add(randomForest);
      predicted.add(naiveBytes);
      print("predicted ${predicted.toString()}");
      await savePredictionData(predicted.toString());

      String searchValue = "";
      List<dynamic> keysContainingChars = [];

      for (int i = 0; i < 3; i++) {
        if (i == 0) {
          searchValue = linearRegression;
        } else if (i == 1) {
          searchValue = randomForest;
        } else {
          searchValue = naiveBytes;
        }
        // Your code here
        myMap.forEach((key, value) {
          if (key.toString().contains(searchValue)) {
            keysContainingChars.add(key);
            print('Key: $key, Value: $value');
          }
        });
      }
      print("I want to see $keysContainingChars");

      if (keysContainingChars.isNotEmpty) {
        print('Keys containing "$randomForest": $keysContainingChars');
        // return response;
      } else {
        print('No keys containing "$randomForest" found');
      }

      if (response?.statusCode == 200) {
        update();
      } else {
        print("User orders not found");
      }
    }
  }

  static Future<void> savePredictionData(String predictionData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> predictionList = prefs.getStringList('predictionList') ?? [];
    predictionList.add(predictionData);
    await prefs.setStringList('predictionList', predictionList);
  }

   Future<List<String>> getPredictionData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> predictionList = prefs.getStringList('predictionList') ?? [];
  print("Got this data $predictionList");
  return predictionList;
}


  Future<void> tect(Detect detect) async {
    Response response = await detectRepo.deaeaseDetect(detect);
  }
}
