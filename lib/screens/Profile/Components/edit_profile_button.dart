import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    ),
    );
  }
}