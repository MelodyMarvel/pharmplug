// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReferralPage extends StatelessWidget {
  const ReferralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
                child: Row(
                  children: [
                    Image.asset('assets/images/back.png'),
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Refer and earn point',
                        style: TextStyle(color: Color(0xFF1971A3)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    height: 5,
                    width: 60,
                    color: Colors.grey,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset('assets/images/friends.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                'Refer to your friend and get a cash \n rewards of #50',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                'Share this link with your and after they \n install, both of will get #50 cash rewards',
                style: TextStyle(fontSize: 10, color: Colors.black54),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                height: 58,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BLRSTJDWMVPK',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.w100),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/copy.png')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 2,
                width: 300,
                color: Colors.black12,
              ),
              SizedBox(
                height: 50,
              ),
              Text('View invitation rules',
                  style: TextStyle(color: Color(0xFF1971A3), fontSize: 12)),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/copy.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                              textAlign: TextAlign.center,
                              'Copy link',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w100)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/check.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                                textAlign: TextAlign.center,
                                'Friends registered \nsuccesfully',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w100)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/cash.png',
                          scale: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                              textAlign: TextAlign.center,
                              'Earn cash \nrewards',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                                fontWeight: FontWeight.w100,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildButton()
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        width: 360,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
            color: Color(0xFF06B1CF)),
        child: Center(
          child: Text(
            'Refer a friend',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
