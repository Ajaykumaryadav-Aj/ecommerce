import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const TextField(
            decoration: InputDecoration(
                hintText: 'Username or Email',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(left: 30, right: 10)),
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                counterText: 'Forget Password',
                counterStyle: TextStyle(color: Colors.red),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.only(left: 30, right: 10)),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(),
            child: const Text('Login'),
          ),
          const SizedBox(height: 50),
          const Text('- OR Continue with -'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google 1.jpg',
              ),
              Image.asset('assets/apple 1.jpg'),
              Image.asset('assets/facebook-app-symbol 1.jpg')
            ],
          )
        ],
      ),
    );
  }
}
