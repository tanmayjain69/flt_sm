import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class ProfilePageCover extends StatelessWidget {

  String fname,bio;
  ProfilePageCover(String m, String b){
    this.fname = m;
    this.bio = b;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[ 
      Positioned(
              right: 20.0,
              top: 0.0,
              left: 20,
              child: Container(
                alignment: Alignment.topCenter,
                width: 400,
                height: 200,
                color: Color(0xFFFFE3D3),
              )
              ),
              Positioned(
              top: 160.0,
              left: 30,
              child:  CircularProfileAvatar(
                      '', 
                      radius: 60, // sets radius, default 50.0              
                      backgroundColor: Colors.transparent, // sets background color, default Colors.white
                      borderWidth: 20,  // sets border, default 0.0
                      initialsText: Text(
                        fname[0],
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),  // sets initials text, set your own style, default Text('')
                      borderColor: Colors.brown, // sets border color, default Colors.white
                      elevation: 5.0, // sets elevation (shadow of the profile picture), default value is 0.0
                      foregroundColor: Colors.brown.withOpacity(0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
                      cacheImage: true, // allow widget to cache image against provided url
                      onTap: () {
                        print(fname);
                      }, // sets on tap 
                      showInitialTextAbovePicture: true, // setting it true will show initials text above profile picture, default false  
                      )
                    ),
                    Positioned(
                    right: -30.0,
                    top: 180.0,
                    
                    child: Container(
                          
                          width: 250,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.only(top: 25),
                          // alignment: Alignment.center,
                          child: Text(fname,
                          style: TextStyle(color: Colors.black, fontSize: 15.0),
                                ),
                                
                        )
                    ), 
                    Positioned(
                    right: -30.0,
                    top: 200.0,
                    
                    child: Container(
                          
                          width: 250,
                          height: 70,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.only(top: 25),
                          alignment: Alignment.topLeft,
                          child: Text(bio,
                          textAlign: TextAlign.left,
                          
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 11.0),
                                ),
                                
                        )
                    ),
      ]
      );
  }
}