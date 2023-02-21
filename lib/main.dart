import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moovbe/Screens/splash%20Screen/splashscreen.dart';
import 'package:moovbe/constant/constant.dart';

import 'Application/bloc/driver_list_bloc.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers:[
     BlocProvider(create: (context)=> DriverListBloc(),),
      ],
      child: MaterialApp(
        theme: ThemeData(bottomSheetTheme:  BottomSheetThemeData(backgroundColor: mainClr),
    
    ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
