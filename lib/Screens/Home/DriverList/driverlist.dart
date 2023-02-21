import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moovbe/Screens/Home/DriverList/add_driver.dart';
import 'package:moovbe/Screens/Home/Widget/buslist.dart';
import 'package:moovbe/Services/bus_service.dart';
import 'package:moovbe/Widgets/common_appbar.dart';
import 'package:moovbe/constant/constant.dart';
import '../../../Application/bloc/driver_list_bloc.dart';

class DriverList extends StatelessWidget {
   DriverList({super.key,});


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
            BlocBuilder<DriverListBloc, DriverListState>(
              builder: (context, state) {
                var length;
                if (state.driverList == null) {
                  return  Text('${0} Drivers Found');
                }else{
                  return Text('${state.driverList!.driverList.length} Drivers Found');
                }
                // return Text('${0} Drivers Found');
              },
            ),
            height10,
            Expanded(
              child: BlocBuilder<DriverListBloc, DriverListState>(
                builder: (context, state) {
                  if (state.driverList == null) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return ListView.separated(
                      itemBuilder: (context, index) => height10,
                      separatorBuilder: (context, index) {
                        final data = state.driverList!.driverList[index];
                        return BusList(
                          title: data.name,
                          subtitle: data.licenseNo,
                          buttontext: 'Delete',
                          childWidget: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/driver.jpeg'),
                          ),
                        );
                      },
                      itemCount: state.driverList!.driverList.length);
                },
              ),
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
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => AddDriver()));
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
