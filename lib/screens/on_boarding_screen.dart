import 'package:ecommerce/screens/homepage_screen.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int currentPage = 0;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

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
    },
    {
      'image': 'assets/Shopping bag-rafiki 1.svg',
      'title': 'Get Your Order',
      'Description':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ));
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: currentPage == onBoardingData.length - 3
                        ? const Text('')
                        : TextButton(
                            onPressed: () {
                              pageController.previousPage(
                                  duration: const Duration(microseconds: 200),
                                  curve: Curves.linear);
                            },
                            child: const Text(
                              'Prev',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(onBoardingData.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 8,
                        width: (index == currentPage) ? 40 : 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == currentPage)
                                ? Colors.black
                                : Colors.grey),
                      );
                    }),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: (currentPage == (onBoardingData.length - 1))
                        ? TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HomepageScreen(),
                                  ));
                            },
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(248, 55, 88, 1),
                              ),
                            ),
                          )
                        : TextButton(
                            onPressed: () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.linear);
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color.fromRGBO(248, 55, 88, 1),
                              ),
                            ),
                          ),
                  ),
                )
              ],
            ),
          ),
          body: Stack(
            children: [
              PageView.builder(
                onPageChanged: onChanged,
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SvgPicture.asset(onBoardingData[index]['image']),
                      Text(
                        onBoardingData[index]['title'],
                        style: const TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w800),
                      ),
                      ConstrainedBox(
                          constraints: const BoxConstraints.expand(
                              height: 72, width: 340),
                          child: Text(onBoardingData[index]['Description']))
                    ],
                  );
                },
              ),
            ],
          )),
    );
  }
}
