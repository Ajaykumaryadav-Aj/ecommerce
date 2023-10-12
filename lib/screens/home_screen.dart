import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset('assets/fashion shop-rafiki 1.svg')),
          const Text(
            'Choose Products',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          const Text(
            'Ament minimum mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequent duis enim velit mollit',
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
