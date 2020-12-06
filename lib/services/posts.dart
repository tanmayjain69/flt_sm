import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PostService{

  Dio dio = new Dio();

  getAllPosts() async{
      try{
        return await dio.get('http://192.168.1.13:3000/getAllPosts');
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