import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PreferenceService{
  Dio dio = new Dio();


  addPreference(name,communities) async {
    try{
    return await dio.post('http://192.168.1.13:3000/addPreference',data: {
     "name":name ,
     "Communities":communities,

    }, options: Options (contentType: Headers.jsonContentType)
    );
    }
    on DioError catch(e){
      Fluttertoast.showToast(msg: e.response.data['msg'],
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0

      
      );
    }
  }

  // getinfo(token) async {
  //   dio.options.headers['Authorization'] = 'Bearer $token';
  //   return await dio.get('http://192.168.1.13:3000/getinfo');
    
  // }

  

}