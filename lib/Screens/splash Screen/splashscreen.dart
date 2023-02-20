import 'package:flutter/material.dart';
import '../../constant/constant.dart';
import '../Login/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainClr,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Image.asset(
          'assets/images/title.jpeg',
          scale: 1.2,
        )),
      ]),
      bottomSheet: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(14),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                'Get Started',
                style: buttonTextMainClr,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
