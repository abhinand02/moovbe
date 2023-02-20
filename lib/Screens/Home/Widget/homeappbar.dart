import 'package:flutter/material.dart';
import '../../../constant/constant.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 42, 42, 43),
      title: Column(
        children: [
          height20,
          Center(
            child: Image.asset(
              'assets/images/homelogo.jpeg',
              fit: BoxFit.contain,
              scale: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}