// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharmplug/home/feedback.dart';
import 'package:pharmplug/home/home.dart';
import 'package:pharmplug/home/referral.dart';
import 'package:pharmplug/onboarding/lab_test_frame.dart';
import 'package:pharmplug/onboarding/splash.dart';
import 'package:pharmplug/onboarding/onboarding_screen2.dart';
import 'package:pharmplug/onboarding/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,     
      home:  FeedBack(),
    );
  }
}
