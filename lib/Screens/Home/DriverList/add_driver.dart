import 'package:flutter/material.dart';
import 'package:moovbe/Widgets/common_appbar.dart';
import 'package:moovbe/constant/constant.dart';
import '../../Login/Widgets/customtextformfield.dart';

class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: 'AddDriver'),
      body: Column(
        children: [
          height20,
          const CustomTextFormField(hintText: 'Enter Name',),
          const CustomTextFormField(hintText: 'Enter License Number',),
        ],
      ),
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
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(14),
                    backgroundColor: mainClr,
                  ),
                  child: Text(
                    'Save',
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
