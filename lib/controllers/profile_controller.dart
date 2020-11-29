import 'dart:convert';

import 'package:fltsm/Models/profile_model.dart';
import 'package:fltsm/services/profile.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ProfileController extends GetxController {
  
  var profiledetails = List<User>().obs;
  // var profiledetails;
  var name; 
  
  @override
  void onInit(){
    fetchDetails();
    super.onInit();
   
  }

  void fetchDetails() async {
      // WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var name = preferences.getString('name');
    
    ProfileService().getProfileInfo(name).then((val) async {
      await Future.delayed(Duration(seconds: 1));
      // print(val.data['msg']);
      
      final jsonResponse = val.data['msg'];
      User user = new User.fromJson(jsonResponse);
      // print(user.name);
      profiledetails.value = [user];
      // print(profiledetails[0].fname);
    });
  
  }

  void updateDetails(data) async{
    var dat =json.encode(data);
    ProfileService().updateProfile(dat).then((val) async {
                    print(val.data['msg']);
                    fetchDetails();
            });
    
  }

  

  
}