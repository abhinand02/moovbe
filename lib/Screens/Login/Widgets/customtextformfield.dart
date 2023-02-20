import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key, required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            contentPadding: const EdgeInsets.all(20),
            hintText: hintText,
            hintStyle: TextStyle(),
            filled: true,
            fillColor: Color.fromARGB(255, 225, 226, 235),
          ),
        ),
      ),
    );
  }
}
