import 'package:flutter/material.dart';

import 'ui/myhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Flutter Bloc Crud",
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}