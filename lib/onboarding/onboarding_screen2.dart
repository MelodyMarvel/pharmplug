// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

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
                  child: Image.asset('assets/images/Info_Message.png'),
                ),
              ),
              // Spacer(),
              Center(
                child: Text(
                  'chat with certified pharmaccist',
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
