// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Expanded(
                child: Center( 
                  child: Image.asset('assets/images/Doctor.png'),
                ),
              ),
              // Spacer(),
              Center(
                child: Text(
                  'Get your medications from \n the \n comfort of your phone',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Get instant pharmaceutical help',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
