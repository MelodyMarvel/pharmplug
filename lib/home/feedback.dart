// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  bool isOverallServiceActive = false;
  bool isCustomerSupportActive = false;
  bool isProductQualityActive = false;
  bool isPickupActive = false;

  void _toggleOverallService() {
    setState(() {
      isOverallServiceActive = !isOverallServiceActive;
    });
  }

  void _toggleCustomerSupport() {
    setState(() {
      isCustomerSupportActive = !isCustomerSupportActive;
    });
  }

  void _toggleProductQualityActive() {
    setState(() {
      isProductQualityActive = !isProductQualityActive;
    });
  }

  void _togglePickupActive() {
    setState(() {
      isPickupActive = !isPickupActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                SizedBox(
                  height: 30,
                ),
                _buildDivider(color: Color(0xFFE8E8E8), height: 7),
                SizedBox(
                  height: 40,
                ),
                _buildExperienceSection(),
                _buildDivider(color: Color(0xFFE8E8E8), height: 4),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildImprovementSection(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildOverallService(),
                                _buildCustomerSupport(),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buidProductQuality(),
                                _buildPickupService(),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                _buildFeedbackInput(),
                _buildSubmitButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOverallService() {
    return GestureDetector(
      onTap: _toggleOverallService,
      child: Container(
        width: 132,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isOverallServiceActive ? Color(0XFF06B1CF) : Color(0xFFEEEDED),
        ),
        child: Center(
          child: Text(
            'Overall Service',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                color: isOverallServiceActive ? Colors.white : Colors.black38,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  _buildCustomerSupport() {
    return GestureDetector(
      onTap: _toggleCustomerSupport,
      child: Container(
        margin: EdgeInsets.only(right: 24),
        width: 132,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
              isCustomerSupportActive ? Color(0XFF06B1CF) : Color(0xFFEEEDED),
        ),
        child: Center(
          child: Text(
            'Customer support',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                color: isCustomerSupportActive ? Colors.white : Colors.black38,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _buidProductQuality() {
    return GestureDetector(
      onTap: _toggleProductQualityActive,
      child: Container(
        width: 132,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isProductQualityActive ? Color(0XFF06B1CF) : Color(0xFFEEEDED),
        ),
        child: Center(
          child: Text(
            'Product quality',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                color: isProductQualityActive ? Colors.white : Colors.black38,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  _buildPickupService() {
    return GestureDetector(
      onTap: _togglePickupActive,
      child: Container(
        width: 180,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isPickupActive ? Color(0XFF06B1CF) : Color(0xFFEEEDED),
        ),
        child: Center(
          child: Text(
            'Pickup and delivery service',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                color: isPickupActive ? Colors.white : Colors.black38,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset('assets/images/back.png'),
          ),
          Text('FeedBack', style: TextStyle(color: Color(0xFF1971A3))),
        ],
      ),
    );
  }

  Widget _buildDivider({required Color color, required double height}) {
    return Container(
      width: double.infinity,
      height: height,
      color: color,
    );
  }

  Widget _buildExperienceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(width: 50, height: 5, color: Colors.grey),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rate Your Experience',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 14,
              ),
              Text('Are you satisfied with the service ?',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black38))
            ],
          ),
        ),
        SizedBox(height: 38),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset('assets/images/star.png', scale: 2),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }

  Widget _buildImprovementSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Rate Your Experience',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text('Tell us what can be improved',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38)),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedbackInput() {
    return Center(
      child: Container(
        width: 400,
        child: TextField(
          maxLines: 10,
          decoration: InputDecoration(
            hintText: 'Tell us what can be improved...',
            hintStyle: TextStyle(fontSize: 14, color: Colors.black45),
            // Applying color and width to the border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0XFF06B1CF), width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black26, width: 3),
            ),
          ),
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    bool isAnyServiceActive = isOverallServiceActive ||
        isCustomerSupportActive ||
        isProductQualityActive ||
        isPickupActive;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35.0),
      child: Center(
        child: Container(
          width: 360,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isAnyServiceActive ? Color(0XFF06B1CF) : Color(0xFFBFE9FD),
          ),
          child: Center(
            child: Text(
              'Submit',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
