import 'package:flutter/material.dart';
import 'package:pra/presentation/login/login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFC153B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 230.0),
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: 200.0,
                width: 200.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(316, 58),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      color: Color(0xFFFC153B),
                      fontSize: 22,
                      fontFamily: 'Axiforma',
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
    );
  }
}
