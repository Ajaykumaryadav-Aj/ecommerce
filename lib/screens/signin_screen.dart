import 'package:ecommerce/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 32, right: 185),
            child: Text(
              'Welcome\nBack!',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            width: 345,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username or Email',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 37),
          const SizedBox(
            width: 345,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                counterText: 'Forget Password?',
                
                counterStyle: TextStyle(
                    color: Color.fromRGBO(248, 55, 88, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.preview),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          InkWell(
              onTap: () {},
              child: Container(
                height: 55,
                width: 345,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromRGBO(248, 55, 88, 1)),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white),
                ),
              )),
          const SizedBox(height: 50),
          const Text('- OR Continue with -'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: const Color.fromRGBO(248, 55, 88, 1),
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    'assets/google 1.jpg',
                  ),
                ),
              ),
              const SizedBox(width: 13),
              CircleAvatar(
                radius: 27,
                backgroundColor: const Color.fromRGBO(248, 55, 88, 1),
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset('assets/apple 1.jpg'),
                ),
              ),
              const SizedBox(width: 13),
              CircleAvatar(
                radius: 27,
                backgroundColor: const Color.fromRGBO(248, 55, 88, 1),
                child: CircleAvatar(
                    radius: 25,
                    child: Image.asset('assets/facebook-app-symbol 1.jpg')),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create An Account',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(248, 55, 88, 1),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
