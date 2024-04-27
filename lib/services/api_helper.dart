import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task/apilink.dart';
import 'package:task/services/request_state.dart';
class APIHelper {


 Future<Either<List,Requestatate>> GetRequest({required String  url ,required Map body ,required Map<String, String> headers})
 async{

  var req = await  http.get(Uri.parse(url),headers:headers );
  print(req.statusCode);
  if(req.statusCode == 200 || req.statusCode == 201)
{ 
  List res = jsonDecode(req.body);
  print(res);
  return left(res);
}
    
  else return  right(Requestatate.serverfailure);



 }


 Future<Either<Map,Requestatate>>PostRequest({required String  url ,required Map body ,required Map<String, String> headers})
 async{

  var req = await  http.post(Uri.parse(url),headers:headers,body: body );
if(req.statusCode == 200 || req.statusCode == 201)
 return left(jsonDecode(req.body));
 else return right(Requestatate.serverfailure); 
 }

}