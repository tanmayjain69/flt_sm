import 'package:fltsm/Models/profile_model.dart';
import 'package:fltsm/services/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ProfileController extends GetxController {
  
  // var profiledetails = List<User>().obs;
  var profiledetails;
  
  
  @override
  void onInit() async{
    super.onInit();

    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var name = preferences.getString('name');
    ProfileService().getProfileInfo(name).then((val) async {
      
      print(val.data['msg']);
      profiledetails = val.data['msg']; 
       
    });

  }

  

  
}