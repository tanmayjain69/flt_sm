import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
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
                          
                            child: new Text("\nProfile ", 
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            textAlign: TextAlign.center,
                            
                            ),
                            
                          ),
                  )
                    
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