import 'package:flutter/material.dart';
import 'package:moovbe/Screens/splash%20Screen/splashscreen.dart';
import 'package:moovbe/constant/constant.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(bottomSheetTheme:  BottomSheetThemeData(backgroundColor: mainClr),

),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
