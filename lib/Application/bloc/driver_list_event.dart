part of 'driver_list_bloc.dart';

@freezed
class DriverListEvent with _$DriverListEvent {
  const factory DriverListEvent.getDriverList() = GetDriverList;
}