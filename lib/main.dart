import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:learn_programming_flutter_firestore/screens/landing.dart';

void main() => runApp(MaxFitApp());

class MaxFitApp extends StatelessWidget {
  const MaxFitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MaxFitness",
      theme: ThemeData(
        primaryColor: Color.fromRGBO(50, 65, 85, 1),
        textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
      ),
      home: LandingPage(),
    );
  }
}
