// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List catTitles = [
    'I want to get some \n medications',
    'I would like to order \n for a lab test',
    'I would like to speak \n with a pharmacist'
  ];

  List<Image> catIcons = [
    Image.asset('assets/images/ic_baseline-support-agent.png'),
    Image.asset('assets/images/ic_baseline-support-agent.png'),
    Image.asset('assets/images/ic_baseline-support-agent.png')
  ];
// List <Color> catColors = [
//   Color()
// ];

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
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'welcome, ',
                        style: TextStyle(fontSize: 24),
                      ),
                      TextSpan(
                        text: "Josy.",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF8CD50A)),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/vector2.png'),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '5 yerima street just beside mango...',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: Container(
            //     height: MediaQuery.of(context).size.height / 3.5,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         image: DecorationImage(
            //             image: AssetImage('assets/images/banner1.png'),
            //             fit: BoxFit.cover)),
            //   ),
            // ),
            _buildBanners(context, images),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFD9D9D9)),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFD9D9D9)),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFD9D9D9)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Column(
              children: [
                GridView.builder(
                    itemCount: catTitles.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 1.0),
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
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              catTitles[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      );
                    })
              ],
            ),
            // SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: [
                  Text(
                    'OR',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'join pharmplug special today',
                    style: TextStyle(color: Color(0XFF666670), fontSize: 12),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 40,),
            Padding(
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
                      SizedBox(
                        width: 20,
                      ),
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
            ),
            // SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  Widget _buildBanners(BuildContext context, List<String> images) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Builder(
        builder: (context) {
          double screenWidth = MediaQuery.of(context).size.width * 0.96;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    images[index],
                    width: screenWidth,
                    fit: BoxFit.fill, // Ensures the image fills the container
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
