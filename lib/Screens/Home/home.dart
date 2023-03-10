import 'package:flutter/material.dart';
import 'package:moovbe/Screens/Home/DriverList/driverlist.dart';
import 'package:moovbe/constant/constant.dart';
import 'BusDetails/three_seat.dart';
import 'Widget/homeappbar.dart';
import 'Widget/homecontainer.dart';
import 'Widget/buslist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HomeAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeContainer(
                width: width,
                title: 'Bus',
                subTitle: 'Manage your Bus',
                color: mainClr,
                image: 'assets/images/bus.png',
                leftPosition: 40,
                nextPage: ThreeSeatBus(),
              ),
              HomeContainer(
                width: width,
                title: 'Drivers',
                subTitle: 'Manage your Driver',
                color: blackClr,
                image: 'assets/images/driver.jpeg',
                leftPosition: 50,
                nextPage: DriverList()
              ),
            ],
          ),
          height20,
          const Text('21 Buses Found'),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return height20;
                },
                separatorBuilder: (context, index) {
                  return  BusList(title: 'KSRTC', subtitle:  'Swift Scania P-series', buttontext: 'Manage',childWidget: Image.asset('assets/images/white bus.png'),);
                },
                itemCount: 21),
          )
        ]),
      ),
    );
  }
}
