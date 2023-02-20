import 'package:flutter/material.dart';
import '../../../constant/constant.dart';

class BusList extends StatelessWidget {
  const BusList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: greyClr),
        color: whiteClr,
        boxShadow: [
          BoxShadow(
            color: greyClr,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: const Offset(0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          color: greyClr,
          width: 65,
          height: 80,
          child: Image.asset('assets/images/white bus.png'),
        ),
        title: Text('KSRTC'),
        subtitle: Text('Swift Scania P-series', style: TextStyle(fontSize: 13, color: blackClr),),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: mainClr, elevation: 0),
            child:  const Text('Manage', style: TextStyle(fontSize: 10),),
          ),
        ),
      ),
    );
  }
}
