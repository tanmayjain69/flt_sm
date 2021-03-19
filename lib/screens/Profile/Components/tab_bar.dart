import 'package:fltsm/screens/Profile/Components/profile_grid.dart';
import 'package:flutter/material.dart';

class ProfileTabBar extends StatefulWidget {
  @override
  _ProfileTabBarState createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
              child: Material(
              child: DefaultTabController(
                
                    length: 2,
                    child: Column(
                      children: <Widget>[
                        Container(
                          constraints: BoxConstraints.expand(height: 50),
                          child: TabBar(
                            // isScrollable: true,
                            indicatorWeight: 1.5,
                            indicatorColor: Color(0xff2D2727),
                            labelColor: Color(0xff2D2727),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19

                            ),
                            tabs: [         
                            Tab(text: "POSTS"),
                            Tab(text: "REWARDS"),
                            
                          ]),
                        ),
                        Expanded(
                          child: Container(
                            child: TabBarView(children: [
                              Container(
                                child: ProfileGrid(),
                              ),
                              Container(
                                child: Text("Articles Body"),
                              ),
                          
                            ]),
                          ),
                        )
                      ],
                    ),
                   ),
                  
                   
                
              
    ));
  }
}