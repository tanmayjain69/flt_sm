import 'package:fltsm/controllers/profile_controller.dart';
import 'package:fltsm/screens/Profile/Components/edit_profile_button.dart';
import 'package:fltsm/screens/Profile/Components/profile_page_cover.dart';
import 'package:fltsm/screens/Profile/Components/profile_scroll_details.dart';
import 'package:fltsm/screens/Profile/Components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final profilecontroller = Get.put(ProfileController());
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
          child:  GetX<ProfileController>(
            
            builder: (controller) {
              return SingleChildScrollView(
                
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   
                   Container(
                              width: 350,
                              height: 40,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.only(top: 0),
                              // alignment: Alignment.center,
                              child: Text((controller.profiledetails?.length >0 ? controller.profiledetails[0].name:''),
                                style: TextStyle(color: Colors.black, fontSize: 20.0),
                                      ),
                              
                            ),
                  
                  SizedBox(
                  width: double.infinity,
                  height: 310,
                    child: ProfilePageCover()
                    ),
               SizedBox(   
                 height: 150,
                 width: double.infinity,
                  child: ProfileDetails()
              ),
              SizedBox(
                width: 400,
              child: EditProfile(),
              ),
              SizedBox(
                width: double.infinity,
                height: 500,
                child: ProfileTabBar()
              ),
              
                  ],
                ),
              );
            }
          )
        
      
    );
  }
}