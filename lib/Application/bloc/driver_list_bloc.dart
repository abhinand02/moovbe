import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moovbe/Services/bus_service.dart';

import '../../Model/driver_model.dart';

part 'driver_list_event.dart';
part 'driver_list_state.dart';
part 'driver_list_bloc.freezed.dart';

class DriverListBloc extends Bloc<DriverListEvent, DriverListState> {
  DriverListBloc() : super(DriverListState.initial()) {
    on<GetDriverList>((event, emit) async{
      final data =await BusServices.getDrivers();
      emit(DriverListState(driverList: data, isLoading: false));
    });
  }
}
