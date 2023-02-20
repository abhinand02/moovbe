import 'package:flutter/material.dart';
import 'package:moovbe/Screens/Home/DriverList/add_driver.dart';
import 'package:moovbe/Screens/Home/Widget/buslist.dart';
import 'package:moovbe/Widgets/common_appbar.dart';
import 'package:moovbe/constant/constant.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: 'Driver List'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            Text('21 Drivers Found'),
            height10,
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => height10,
                  separatorBuilder: (context, index) {
                    return const BusList(
                      title: 'Rohit sharma',
                      subtitle: 'PJ5151961616',
                      buttontext: 'Delete',
                      childWidget: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/driver.jpeg'),
                      ),
                    );
                    ;
                  },
                  itemCount: 21),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: whiteClr,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const AddDriver()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(14),
                  backgroundColor: mainClr,
                ),
                child: Text(
                  'Add Driver',
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
