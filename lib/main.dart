import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/homepage.dart';
void main() {
  runApp( app());
}


class app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Before: MaterialApp(
  home: homepage(),
);
  }
}