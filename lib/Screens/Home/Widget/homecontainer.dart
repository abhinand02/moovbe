import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moovbe/Application/bloc/driver_list_bloc.dart';
import 'package:moovbe/Screens/Home/DriverList/driverlist.dart';
import '../../../Services/bus_service.dart';
import '../../../constant/constant.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key? key,
    required this.width,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.color,
    required this.leftPosition, required this.nextPage,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;
  final double width;
  final Color color;
  final double leftPosition;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<DriverListBloc>(context).add(const GetDriverList());
        BusServices.getDrivers();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) =>  nextPage));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        height: 200,
        width: width * .43,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: whiteClr,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subTitle,
                    style:
                        TextStyle(color: whiteClr, fontSize: 13, height: 1.5),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: leftPosition,
              child: Image.asset(
                image,
                scale: 1.4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
