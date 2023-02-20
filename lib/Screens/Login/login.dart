import 'dart:math';
import 'package:flutter/material.dart';
import 'package:moovbe/Screens/Home/home.dart';
import 'package:moovbe/constant/constant.dart';

import 'Widgets/customtextformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(240),
          child: Stack(children: [
            Container(
              color: Colors.black,
            ),
            Positioned(
              left: 100,
              // right: 0,
              top: -100,
              bottom: 80,
              child: Transform.rotate(
                angle: 50 * pi / 180,
                child: Container(
                  width: 350,
                  color: mainClr,
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  height20,
                  const Text(
                    'Manage your Bus and Drivers',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
          ]),
        ),
        body: Column(children: [
          height20,
          height20,
          const CustomTextFormField(hintText: 'Enter Username',),
          const CustomTextFormField(hintText: 'Enter Password',),
        ]),
        bottomSheet: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(
                  20,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(14),
                    backgroundColor: mainClr,
                  ),
                  child: Text(
                    'Login',
                    style: buttonTextwhite,
                  ),
                ),
              )),
            ],
          ),
        ),
        );
  }
}
