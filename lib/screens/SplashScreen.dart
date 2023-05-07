import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/screens/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Temps d'affichage du splash screen en millisecondes
  final splashScreenDuration = 10000;

  // Fonction pour naviguer vers la prochaine page après le splash screen
  void navigateToNextPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => HomePage()),
    );
  }

  @override
  void initState() {
    super.initState();
    // Attendre le temps défini puis naviguer vers la prochaine page
    Timer(Duration(milliseconds: splashScreenDuration), navigateToNextPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo ou image de l'application
            Image.asset('assets/logo.jpg'),
            SizedBox(height: 20.0),
            Text(
              'EasyTravel',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
