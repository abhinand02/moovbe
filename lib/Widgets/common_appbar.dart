import 'package:flutter/material.dart';


  PreferredSizeWidget commonAppBar({required String title}) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(90),
      child: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 42, 42, 43),
        centerTitle: true,
        title:  Text(title, style: const TextStyle(fontSize:16),),
      ),
    );
  }