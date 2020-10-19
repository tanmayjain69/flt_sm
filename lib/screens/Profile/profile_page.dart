import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertagselector/fluttertagselector.dart';
import 'package:fluttertagselector/tag_class.dart';
class ProfilePage extends StatefulWidget {
  
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      
        child: new Stack(
            
            children: <Widget>[
            
              Container(
                      width: 300,
                      height: 50,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 25),
                      // alignment: Alignment.center,
                      child: Text("Sambhav_Bhandari",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                    ),
              Positioned(
              right: 20.0,
              top: 80.0,
              left: 20,
              child: Container(
                alignment: Alignment.topCenter,
                width: 400,
                height: 200,
                color: Color(0xFFFFE3D3),
              )
              ),
              Positioned(
              top: 250.0,
              left: 30,
              child:  CircularProfileAvatar(
                      '', 
                      radius: 60, // sets radius, default 50.0              
                      backgroundColor: Colors.transparent, // sets background color, default Colors.white
                      borderWidth: 20,  // sets border, default 0.0
                      initialsText: Text(
                        "SB",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),  // sets initials text, set your own style, default Text('')
                      borderColor: Colors.brown, // sets border color, default Colors.white
                      elevation: 5.0, // sets elevation (shadow of the profile picture), default value is 0.0
                      foregroundColor: Colors.brown.withOpacity(0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
                      cacheImage: true, // allow widget to cache image against provided url
                      onTap: () {
                        print('SB');
                      }, // sets on tap 
                      showInitialTextAbovePicture: true, // setting it true will show initials text above profile picture, default false  
                      )
                    ),

                    
              Positioned(
                right: -30.0,
                top: 250.0,
                 
                child: Container(
                      
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 25),
                      // alignment: Alignment.center,
                      child: Text("Sambhav Bhandari",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                            ),
                            
                    )
                ), 
                Positioned(
                right: 50.0,
                top: 270.0,
                 
                child: Container(
                      
                      width: 250,
                      height: 70,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 25),
                      alignment: Alignment.topRight,
                      child: Text("Traveller \nExploring the unexplpored",
                      // textAlign: TextAlign.left,
                      
                       overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 11.0),
                            ),
                            
                    )
                ),
                Positioned(
                right: 280.0,
                top: 350.0,
                 
                child: Container(
                      
                      width: 100,
                      height: 70,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 25),
                      alignment: Alignment.topRight,
                      child: Text("Interests",
                      // textAlign: TextAlign.left,
                      
                      //  overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                            ),
                            
                    )
                    
                ),
                
                Positioned(
                right: 170.0,
                top: 420.0,
                 
                child: Container(
                    height: 120.0,
                    width: 222.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE3D3),
                          borderRadius: BorderRadius.all(Radius.circular(24.0))),
                          
                            child: new Text("\nProfile ", 
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            textAlign: TextAlign.center,
                            
                            ),
                            
                          ),
                  )
                    
                ),
                Positioned(
                right: -10.0,
                top: 420.0,
                 
                child: Container(
                    height: 120.0,
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

                Positioned(
                  top: 550,
                  right: 20,
                  left: 20,
                child: FlatButton(
                      onPressed: null,
                      child: Text('Edit Profile', style: TextStyle(
                          color: Colors.black
                        )
                      ),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(side: BorderSide(
                        color: Colors.black,
                        width: 2,
                        style: BorderStyle.solid
                      )),
                    )
                ),

                Positioned(
                  top: 600,
                child: Container(
                    
                   child: Material(
                     
                     child: DefaultTabController(
                        length: 2,
                              child: TabBar(
                      isScrollable: true,
                      indicatorWeight: 0.01,
                      labelColor: Color(0xff2D2727),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22

                      ),
                      unselectedLabelStyle: TextStyle(

                      ),

                      tabs: <Widget>[
                        Tab(
                          text: "           POSTS                ",
                        ),Tab(
                          text: "REWARDS",
                        )
                      ],
                  ),
                   )
                   ),
                
              )
              ),
            
                
               
                 
                
                  
             
          
            ],
        
        ),
      
    
       
        
      
      
       
    );
    
  }
}