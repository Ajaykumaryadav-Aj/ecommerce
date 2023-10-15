import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  List onBoardingData = [
    {
      'image': 'assets/fashion shop-rafiki 1.svg',
      'title': 'Choose Product',
      'Description':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    },
    {
      'image': 'assets/Sales consulting-pana 1.svg',
      'title': 'Make Payment',
      'Description':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            Text(
              'Skip',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            )
          ],
        ),
        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: onBoardingData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SvgPicture.asset(onBoardingData[index]['image']),
                    Text(
                      onBoardingData[index]['title'],
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                    ),
                    Text(onBoardingData[index]['Description'])
                  ],
                );
              },
            )
          ],
        ));
  }
}
