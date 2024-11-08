// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> catTitles = [
    'I want to get some \n medications',
    'I would like to order \n for a lab test',
    'I would like to speak \n with a pharmacist'
  ];

  final List<Image> catIcons = [
    Image.asset('assets/images/ic_baseline-support-agent.png'),
    Image.asset('assets/images/ic_baseline-support-agent.png'),
    Image.asset('assets/images/ic_baseline-support-agent.png')
  ];

  final List<String> images = [
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Welcome Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40),
              child: _buildGreeting(),
            ),

            // Banners Section
            _buildBanners(context, images),

            // Dots Indicator
            SizedBox(height: 10),
            _buildDotsIndicator(),

            // Services Prompt
            SizedBox(height: 10),
            _buildService(),
            SizedBox(height: 55),

            // Categories Section
            _buildCategoryGrid(),

            // "OR" Section
          _buildORSections(),
            // Google Sign-In Button
            _buildButton()
          ],
        ),
      ),
    );
  }

  // Banners Widget
  Widget _buildBanners(BuildContext context, List<String> images) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                images[index],
                width: MediaQuery.of(context).size.width * 0.96,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  // Dots Indicator
  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 13,
          width: 13,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFD9D9D9),
          ),
        ),
      ),
    );
  }

  // Category Grid
  Widget _buildCategoryGrid() {
    return GridView.builder(
      itemCount: catTitles.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Color(0xFF06B1CF),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: catIcons[index],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                catTitles[index],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        );
      },
    );
  }

Widget _buildORSections(){
  return   Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: [
                  Text(
                    'OR',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Join PharmPlug Special today',
                    style: TextStyle(color: Color(0XFF666670), fontSize: 12),
                  ),
                ],
              ),
            );
}
  // Welcome Text Widget
  Widget _buildGreeting() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Welcome, ',
                style: TextStyle(fontSize: 24),
              ),
              TextSpan(
                text: "Josy.",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF8CD50A)),
              ),
            ],
          ),
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Image.asset('assets/images/vector2.png'),
            SizedBox(width: 6),
            Expanded(
              child: Text(
                '5 Yerima Street, just beside Mango...',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildService() {
    return Container(
      width: 400,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFEEEDED),
      ),
      child: Center(
        child: Text(
          'What do you need today?',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w100),
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Container(
        width: 360,
        height: 58,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Group.png'),
              SizedBox(width: 20),
              Text(
                'Continue with Google',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF402B2B),
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
