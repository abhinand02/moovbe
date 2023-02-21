part of 'driver_list_bloc.dart';

@freezed
class DriverListState with _$DriverListState {
  const factory DriverListState({
    required DriverList? driverList,
    required bool isLoading,
  }) = _Initial;

  factory DriverListState.initial(){
    return const DriverListState(driverList: null, isLoading: true);
  }
}
