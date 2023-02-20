import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.fromLTRB(20,10,20,10),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          isDense: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.all(20),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 234, 234, 234),
                ),),
    ));
  }
}