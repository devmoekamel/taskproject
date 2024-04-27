import 'package:task/apilink.dart';
import 'package:task/models/Person_model.dart';
import 'package:task/services/api_helper.dart';

class PersonService 
{
APIHelper helper  = new APIHelper();
getAllperson()
async{
 var res =  await helper.GetRequest(url: "http://mohagado-001-site1.itempurl.com/Person/getAllPersons", body:{}, headers:{});
  
 var result  = res.fold((l) => l, (r) => r);
  print(result);
  if(result is List)
  { 
  
    List response = result as List ;
    List persons =  [];
   persons.addAll(response.map((e) => PersonModel.fromJson(e)) )  ;
   return persons ; 
  }
return "error";

}
}