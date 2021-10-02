import 'package:flutter/material.dart';
import 'package:learn_programming_flutter_firestore/screens/auth.dart';
import 'package:learn_programming_flutter_firestore/screens/home.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = false;
    return isLoggedIn ? HomePage() : AutorizationPage();
  }
}
