import 'package:ecommerce/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen1(),
                    ));
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 330, top: 32),
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
              )),
          Center(child: SvgPicture.asset('assets/fashion shop-rafiki 1.svg')),
          const Text(
            'Choose Products',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 72, width: 340),
            child: const Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              style: TextStyle(color: Color.fromRGBO(168, 168, 169, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 330, top: 380),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SplashScreen1(),
                      ));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                )),
          )
        ],
      ),
    );
  }
}

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset('assets/Shopping bag-rafiki 1.svg')),
          const Text(
            'Make Payment',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 72, width: 340),
            child: const Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              style: TextStyle(color: Color.fromRGBO(168, 168, 169, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 330, top: 380),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SplashScreen2(),
                      ));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                )),
          )
        ],
      ),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset('assets/Shopping bag-rafiki 1.svg')),
          const Text(
            'Get Your Order',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 72, width: 340),
            child: const Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              style: TextStyle(color: Color.fromRGBO(168, 168, 169, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, top: 400),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ));
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                )),
          )
        ],
      ),
    );
  }
}
