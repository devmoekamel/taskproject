class PersonModel {
  int? personID;
  String? name;
  String? birthDate;
  int? age;
  int? nationalityID;

  PersonModel(
      {this.personID, this.name, this.birthDate, this.age, this.nationalityID});

  PersonModel.fromJson(Map<String, dynamic> json) {
    personID = json['personID'];
    name = json['name'];
    birthDate = json['birthDate'];
    age = json['age'];
    nationalityID = json['nationalityID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['personID'] = this.personID;
    data['name'] = this.name;
    data['birthDate'] = this.birthDate;
    data['age'] = this.age;
    data['nationalityID'] = this.nationalityID;
    return data;
  }
}

