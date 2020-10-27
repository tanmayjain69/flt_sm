import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {

  int followers,following,posts;
  ProfileDetails(int fl, int fo, int p){
    this.followers = fl;
    this.following = fo;
    this.posts = p;
  }


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
                                             followers.toString(), 
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
                                             posts.toString(), 
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
                                             following.toString(), 
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