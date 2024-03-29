class Detect {
  String? symptom1;
  String? symptom2;
  String? symptom3;
  String? symptom4;
  String? symptom5;

  Detect(
      {this.symptom1,
      this.symptom2,
      this.symptom3,
      this.symptom4,
      this.symptom5});

  Detect.fromJson(Map<String, dynamic> json) {
    symptom1 = json['Symptom1'];
    symptom2 = json['Symptom2'];
    symptom3 = json['Symptom3'];
    symptom4 = json['Symptom4'];
    symptom5 = json['Symptom5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Symptom1'] = this.symptom1;
    data['Symptom2'] = this.symptom2;
    data['Symptom3'] = this.symptom3;
    data['Symptom4'] = this.symptom4;
    data['Symptom5'] = this.symptom5;
    return data;
  }
}


class Results {
  String? dtPredict;
  String? nbPredict;
  String? rfPredict;

  Results({this.dtPredict, this.nbPredict, this.rfPredict});

  Results.fromJson(Map<String, dynamic> json) {
    dtPredict = json['dt_predict'];
    nbPredict = json['nb_predict'];
    rfPredict = json['rf_predict'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt_predict'] = this.dtPredict;
    data['nb_predict'] = this.nbPredict;
    data['rf_predict'] = this.rfPredict;
    return data;
  }
}