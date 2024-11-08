// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  void _showPopUpBox() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: _popUpBox(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _greetingText(),
              _userImage(),
              const SizedBox(height: 80),
              _centeredQuestionText(),
              _nameInputField(),
              const Spacer(),
              _confirmButton(),
              const SizedBox(height: 20),
              _locationDisclaimer(),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }

  Widget _greetingText() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 60),
      child: Text(
        'Hi, there',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Color(0xFF1971A3),
          decoration: TextDecoration.none,
        ),
      ),
    );
  }

  Widget _userImage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 1.0)),
          ),
          child: Image.asset('assets/images/img.png'),
        ),
      ),
    );
  }

  Widget _centeredQuestionText() {
    return Center(
      child: Text(
        'Can you tell us your name?',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.w100,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }

  Widget _nameInputField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 70),
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
          hintText: 'Enter your name',
          hintStyle: TextStyle(color: Color(0xFFADB3BC), fontSize: 14),
        ),
      ),
    );
  }

  Widget _confirmButton() {
    return Center(
      child: GestureDetector(
        onTap: () {
          _showPopUpBox();
        },
        child: Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF06B1CF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'OK',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 20),
              Icon(
                Icons.check,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _locationDisclaimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Vector.png',
          scale: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(fontSize: 10, color: Colors.black54),
              children: [
                TextSpan(
                  text:
                      "When you click 'OK', we will access your current location \n"
                      "in line with ",
                ),
                TextSpan(
                  text: "our service policy.",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Color(0xFF8CD50A)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _popUpBox() {
    return Container(
      height: 180,
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFF8CD50A)),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFF8CD50A)),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFF8CD50A)),
          )
        ],
      ),
    );
  }
}
