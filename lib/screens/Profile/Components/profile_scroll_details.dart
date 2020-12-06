import 'package:fltsm/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDetails extends StatefulWidget {

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {

  ProfileController instd = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[ 
              Positioned(
                right: 170.0,
                top: 0.0,
                 
                child: Container(
                    height: 110.0,
                    width: 222.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE3D3),
                          borderRadius: BorderRadius.all(Radius.circular(24.0))),
                          
                            child: new Stack(
                              children: <Widget>[
                                Positioned(
                                  top:10,
                                  right: 90,
                                  left: 90,
                                  child: Container(
                                    
                                    height: 30,
                                    // width: 30,
                                    child: Text(
                                      "Profile"
                                    ))
                                ),

                                Positioned(
                                 top: 50,
                                 left: 20,
                                 child: Row(
                                   children: [
                                     Column(
                                       children: [
                                         Container(
                                           child: Text(
                                             instd.profiledetails?.length >0 ?'${instd.profiledetails[0].followers}':'', 
                                             style: TextStyle(color: Colors.black, fontSize: 20),
                                            textAlign: TextAlign.center,
                                           )
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(top:5),
                                           padding: EdgeInsets.only(right: 8,left: 8),
                                           child: Text(
                                             "Followers", 
                                             style: TextStyle(color: Colors.black, fontSize: 11),
                                            textAlign: TextAlign.center,
                                           )
                                         )
                                       ],
                                     ),
                                     Column(
                                       children: [
                                         Container(
                                           child: Text(
                                             instd.profiledetails?.length >0 ?'${instd.profiledetails[0].posts}': '', 
                                             style: TextStyle(color: Colors.black, fontSize: 20),
                                            textAlign: TextAlign.center,
                                           )
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(top:5),
                                           padding: EdgeInsets.only(right: 8,left: 8),
                                           child: Text(
                                             "Posts", 
                                             style: TextStyle(color: Colors.black, fontSize: 11),
                                            textAlign: TextAlign.center,
                                           )
                                         )
                                       ],
                                     ),
                                     Column(
                                       children: [
                                         Container(
                                           child: Text(
                                             instd.profiledetails?.length >0 ? '${instd.profiledetails[0].following}':'', 
                                             style: TextStyle(color: Colors.black, fontSize: 20),
                                            textAlign: TextAlign.center,
                                           )
                                         ),
                                         Container(
                                           margin: EdgeInsets.only(top:5),
                                           padding: EdgeInsets.only(right: 8,left: 8),
                                          
                                           child: Text(
                                             "Following", 
                                             style: TextStyle(color: Colors.black, fontSize: 11),
                                            textAlign: TextAlign.center,
                                           )
                                         )
                                       ],
                                     )
                                   ],
                                 ), 
                                )
                                
                              ],
                            
                            ),
                            
                          ),
                      
                  ),
                    
                ),
                
                Positioned(
                right: -10.0,
                top: 0.0,
                 
                child: Container(
                    height: 110.0,
                    width: 152.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE3D3),
                          borderRadius: BorderRadius.all(Radius.circular(24.0))),
                          
                            child: new Text("\nInsights ", 
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            textAlign: TextAlign.center,
                            
                            ),
                            
                          ),
                  )
                    
                ),
      ]);
  }
}