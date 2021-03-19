import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';

class ProfileService{
  Dio dio = new Dio();
  

   addtoProfile(token) async {
     
     try{
       dio.options.headers['Authorization'] = 'Bearer $token';
       return await dio.post('http://192.168.1.4:3000/addtoProfile');

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

   getProfileInfo(name) async {
    try{
    // final queryParameters = {
    //   'name': name,
    // };
    // print(name);    
    return await dio.get('http://192.168.1.4:3000/profileInfo', queryParameters: {
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
    var name = GetStorage().read('name');
    return await dio.patch('http://192.168.1.4:3000/update/$name', data: dat);
    
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
