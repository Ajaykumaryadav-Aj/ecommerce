import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // Text(
          //   'Welcome\nBack!',
          //   style: TextStyle(
          //       fontSize: 36,
          //       fontWeight: FontWeight.w700,
          //       color: Color.fromRGBO(0, 0, 0, 1)),
          // ),
          // Text.rich(
          //   TextSpan(
          //     children: [
          //       TextSpan(
          //         text: 'Welcome\n',
          //         style: TextStyle(fontSize: 34),
          //       ),
          //       TextSpan(
          //         text: 'Back!',
          //         style: TextStyle(fontSize: 34),
          //       ),
          //     ],
          //   ),
          // ),
          Text(
            'Welcome ',
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1)),
          ),
          Text(
            'Back! ',
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1)),
          )
        ],
      ),
    );
  }
}
