import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moovbe/Widgets/common_appbar.dart';
import 'package:moovbe/constant/constant.dart';

class TwoSeatBus extends StatelessWidget {
  const TwoSeatBus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: 'KSRTC Swift Scania P-series'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: ListView(
          children: [
            height20,
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: blackClr, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rohit Sharma',
                            style: TextStyle(
                                fontSize: 35,
                                color: whiteClr,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'License no: PJ515196161655',
                            style: TextStyle(
                                fontSize: 13, color: whiteClr, height: 2),
                          ),
                        ],
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/driver.jpeg',
                          scale: 1.6,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            height20,
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                  border: Border.all(color: greyClr),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/images/seat.svg',
                          color: blackClr,
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                  height10,
                  const TripleSeat(),
                  const TripleSeat(),
                  const TripleSeat(),
                  const TripleSeat(),
                  const TripleSeat(),
                  const TripleSeat(),
                  const TripleSeat(),
                  const TripleSeat(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TripleSeat extends StatelessWidget {
  const TripleSeat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Seat(),
                  Seat(),
                ],
              ),
              Row(
                children: const [
                  Seat(),
                  Seat(),
                ],
              )
            ],
          ),
          height10,
        ],
      ),
    );
  }
}

class Seat extends StatelessWidget {
  const Seat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/seat.svg',
      color: mainClr,
      width: 40,
      height: 40,
    );
  }
}
