import 'package:flutter/material.dart';
import 'package:task/models/Person_model.dart';

class details extends StatelessWidget {

  PersonModel personModel;
  details(this.personModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(personModel.name.toString()+" Detials")),
      body: 
       Column(
        children: [
          Text(personModel.personID.toString()),
          Text(personModel.name.toString()),
          Text(personModel.age.toString()),
           Text(personModel.nationalityID.toString())
        ],
      
      
      ),
    );
  }
}