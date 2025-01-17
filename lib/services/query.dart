import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QueryService{
  Dio dio =new Dio();

  addQuery(dat) async {
    try{    
    return await dio.post('http://192.168.1.4:3000/addQuery', data: dat );
    
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

  getQueryDetail() async{
    try{
    // final queryParameters = {
    //   'name': name,
    // };
    // print(name);    
    return await dio.get('http://192.168.1.4:3000/getQuery');
    
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