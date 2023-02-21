// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DriverListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDriverList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDriverList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDriverList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDriverList value) getDriverList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDriverList value)? getDriverList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDriverList value)? getDriverList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverListEventCopyWith<$Res> {
  factory $DriverListEventCopyWith(
          DriverListEvent value, $Res Function(DriverListEvent) then) =
      _$DriverListEventCopyWithImpl<$Res, DriverListEvent>;
}

/// @nodoc
class _$DriverListEventCopyWithImpl<$Res, $Val extends DriverListEvent>
    implements $DriverListEventCopyWith<$Res> {
  _$DriverListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDriverListCopyWith<$Res> {
  factory _$$GetDriverListCopyWith(
          _$GetDriverList value, $Res Function(_$GetDriverList) then) =
      __$$GetDriverListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDriverListCopyWithImpl<$Res>
    extends _$DriverListEventCopyWithImpl<$Res, _$GetDriverList>
    implements _$$GetDriverListCopyWith<$Res> {
  __$$GetDriverListCopyWithImpl(
      _$GetDriverList _value, $Res Function(_$GetDriverList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDriverList implements GetDriverList {
  const _$GetDriverList();

  @override
  String toString() {
    return 'DriverListEvent.getDriverList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDriverList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDriverList,
  }) {
    return getDriverList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDriverList,
  }) {
    return getDriverList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDriverList,
    required TResult orElse(),
  }) {
    if (getDriverList != null) {
      return getDriverList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDriverList value) getDriverList,
  }) {
    return getDriverList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDriverList value)? getDriverList,
  }) {
    return getDriverList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDriverList value)? getDriverList,
    required TResult orElse(),
  }) {
    if (getDriverList != null) {
      return getDriverList(this);
    }
    return orElse();
  }
}

abstract class GetDriverList implements DriverListEvent {
  const factory GetDriverList() = _$GetDriverList;
}

/// @nodoc
mixin _$DriverListState {
  DriverList? get driverList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverListStateCopyWith<DriverListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverListStateCopyWith<$Res> {
  factory $DriverListStateCopyWith(
          DriverListState value, $Res Function(DriverListState) then) =
      _$DriverListStateCopyWithImpl<$Res, DriverListState>;
  @useResult
  $Res call({DriverList? driverList, bool isLoading});
}

/// @nodoc
class _$DriverListStateCopyWithImpl<$Res, $Val extends DriverListState>
    implements $DriverListStateCopyWith<$Res> {
  _$DriverListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverList = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      driverList: freezed == driverList
          ? _value.driverList
          : driverList // ignore: cast_nullable_to_non_nullable
              as DriverList?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DriverListStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DriverList? driverList, bool isLoading});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DriverListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverList = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_Initial(
      driverList: freezed == driverList
          ? _value.driverList
          : driverList // ignore: cast_nullable_to_non_nullable
              as DriverList?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.driverList, required this.isLoading});

  @override
  final DriverList? driverList;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'DriverListState(driverList: $driverList, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.driverList, driverList) ||
                other.driverList == driverList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverList, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DriverListState {
  const factory _Initial(
      {required final DriverList? driverList,
      required final bool isLoading}) = _$_Initial;

  @override
  DriverList? get driverList;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
