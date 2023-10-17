import 'package:ecommerce/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset('assets/logoipsum-255 1.svg')),
    );
  }
}
