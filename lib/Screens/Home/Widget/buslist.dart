import 'package:flutter/material.dart';
import 'package:moovbe/Screens/Home/BusDetails/three_seat.dart';
import 'package:moovbe/Services/bus_service.dart';
import '../../../constant/constant.dart';

class BusList extends StatelessWidget {
  const BusList({
    Key? key, required this.title, required this.subtitle, required this.buttontext, required this.childWidget,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String buttontext;
  final Widget childWidget;

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
          child: childWidget,
        ),
        title: Text(title),
        subtitle: Text('Licn no: $subtitle', style: TextStyle(fontSize: 13, color: blackClr),),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
            onPressed: () {            },
            style: ElevatedButton.styleFrom(
                backgroundColor: mainClr, elevation: 0),
            child:   Text(buttontext, style: const TextStyle(fontSize: 10),),
          ),
        ),
      ),
    );
  }
}
