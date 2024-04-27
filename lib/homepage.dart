import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:task/details_page.dart';
import 'package:task/models/Person_model.dart';
import 'package:task/services/allperson_serives.dart';

class homepage extends StatelessWidget {

  PersonService personService  = new PersonService() ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
      future: personService.getAllperson() ,
      builder: (context, snapshot) {
        if(snapshot != null && snapshot.data is List  )
        {
          var personsss =  snapshot.data  as List ;
          return ListView.builder(
            itemCount: personsss.length,
            itemBuilder: (context, index) =>
          Card(
            child: ListTile(
              onTap: () =>Get.to(details(personsss[index])) ,
              title: personsss[index]["name"],
            
          )));
        }
        else{
          return Center(child: CircularProgressIndicator(),);
        }
      },
      ))
    ;


  
  }
}