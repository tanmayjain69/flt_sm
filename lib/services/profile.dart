import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileService{
  Dio dio = new Dio();

  
   getProfileInfo(name) async {
    try{
    // final queryParameters = {
    //   'name': name,
    // };
    // print(name);    
    return await dio.get('http://192.168.1.13:3000/profileInfo', queryParameters: {
      "name": name
    });
    
    }
     on DioError catch(e){
       print("Error in request");
      Fluttertoast.showToast(msg: e.response.data['msg'],
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0

      
      );
  }

  }

  updateProfile(dat) async{
    try{
    
    return await dio.patch('http://192.168.1.13:3000/update/test1234', data: dat);
    
    }
     on DioError catch(e){
       print("Error in request");
      Fluttertoast.showToast(msg: e.response.data['msg'],
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0

      
      );
  }
  }


}
