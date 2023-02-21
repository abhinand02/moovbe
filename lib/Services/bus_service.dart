import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moovbe/Model/driver_model.dart';
import 'package:moovbe/Screens/Home/home.dart';
import 'package:moovbe/Services/base_url.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Model/login_model.dart';

class BusServices{
  static Dio dio= DioBaseUrl.dio;
  static Future loginMethod({required String username,required password,required BuildContext context}) async{
    final sharedPref = await SharedPreferences.getInstance();
    try {
      var response = await dio.post('LoginApi',data: {
        "username": username,
        "password": password,
      },
      options: Options(headers: {'Content-Type': 'application/json'}));
      Login result = Login.fromJson(response.data);
      if (result.status) {
        sharedPref.setString('id', result.urlId);
        sharedPref.setString('access', result.access);
        sharedPref.setString('refresh', result.refresh);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomePage()));
      }
      // final data =  getBusList(accessToken: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MDE3NDIxLCJpYXQiOjE2NzY5MzEwMjEsImp0aSI6IjczYjU4MWFmYmYzNTRjNDhiMTRkZWQ5OGE3OTliYTBkIiwidXNlcl9pZCI6MiwiZmlyc3RfbmFtZSI6ImFkbWluX3VzZXIiLCJ1cmxfaWQiOiJGMU45TTM4In0.VBkDUYjojX3i0QUdc6IpJUUfnTcegUTOCHRPcvmaS8c');
    } catch (e) {
      final  snackBar = SnackBar(content: Text('Incorrect Username or Password'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }


  // static Future<Map<String,dynamic>> getBusList({String accessToken ='eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc3MDE3NDIxLCJpYXQiOjE2NzY5MzEwMjEsImp0aSI6IjczYjU4MWFmYmYzNTRjNDhiMTRkZWQ5OGE3OTliYTBkIiwidXNlcl9pZCI6MiwiZmlyc3RfbmFtZSI6ImFkbWluX3VzZXIiLCJ1cmxfaWQiOiJGMU45TTM4In0.VBkDUYjojX3i0QUdc6IpJUUfnTcegUTOCHRPcvmaS8c'}) async{
  //  final response = await dio.post('BusListApi',options: Options(headers: {
  //   'Authorization': 'Bearer $accessToken',
  //   'Content-Type': 'application/json',
  //  }));
  //  if (response.statusCode == 200) {
  //    return jsonDecode(response.data);
  //  }else{
  //   throw Exception('Failed to load bus list');
  //  }
  // }

  static Future getDrivers() async{
        final sharedPref = await SharedPreferences.getInstance();
       final id=  sharedPref.get('id');
       final accessToken = sharedPref.getString('access');
       log(id.toString());
    final response = await dio.get('DriverApi/$id/',options: Options(headers: {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json',
    }));
    final result = DriverList.fromJson(response.data);
    return result;
  }

  static Future addDriver({required String name, required String license}) async{
            final sharedPref = await SharedPreferences.getInstance();
       final id=  sharedPref.get('id');
       final accessToken = sharedPref.getString('access');
       final response = await dio.post('DriverApi/$id/',options: Options(headers: {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json',
    }),
    data: {
      "name" : name,
      "license_no": license,
      "mobile": "",
          });
  }

  static Future deleteDriver() async{
    final sharedPref = await SharedPreferences.getInstance();
       final id=  sharedPref.get('id');
       final accessToken = sharedPref.getString('access');
       final response = await dio.delete('DriverApi/$id/',options: Options(headers: {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json',
    }),
    data: {
      "driver_id":"265",
    });

    print(response.statusCode);
  }
}