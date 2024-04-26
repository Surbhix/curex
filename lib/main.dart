import 'package:curex/cough.dart';
import 'package:curex/fever.dart';
import 'package:curex/headache.dart';
import 'package:curex/intro.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(

        scaffoldBackgroundColor: const Color.fromRGBO(64, 147, 206, 100),
      ),
      routes:
      {
       'fev': (context) => const fever(), 
        'cough': (context) => const cough(),
        'headache':(context) => const headache(),  
      } ,
      home: curex(),
      debugShowCheckedModeBanner: false,
    );
  
  }
}