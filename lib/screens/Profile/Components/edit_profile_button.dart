import 'package:fltsm/screens/Profile/edit_profile_page.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  Future update(BuildContext context)async{
    Navigator.push(context, 
    MaterialPageRoute(
                    builder: (context) {
                      return EditProfilePage();
                    },
                  ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
                      
                      onPressed: (){update(context);},
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