import 'package:flutter/material.dart';
import 'package:moovbe/Widgets/common_appbar.dart';
import 'package:moovbe/constant/constant.dart';
import '../../../Services/bus_service.dart';
import '../../Login/Widgets/customtextformfield.dart';

class AddDriver extends StatelessWidget {
  AddDriver({super.key});

  final formkey1 = GlobalKey<FormState>();
  final formkey2 = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: 'AddDriver'),
      body: Column(
        children: [
          height20,
          CustomTextFormField(
            hintText: 'Enter Name',
            formkey: formkey1,
            controller: nameController,
          ),
          CustomTextFormField(
              hintText: 'Enter License Number',
              formkey: formkey2,
              controller: passwordController),
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
                  BusServices.addDriver(
                      name: nameController.text,
                      license: passwordController.text);
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
