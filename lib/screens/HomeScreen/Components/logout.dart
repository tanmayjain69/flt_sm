import 'package:fltsm/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOut extends StatefulWidget {
  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {


  Future getname() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState() {
       preferences.getString('name');
     }
  }

  Future logout()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('name');
    Navigator.push(context, 
    MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ));
  }

  @override
  void initState(){
    super.initState();
    getname();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              logout();
            },
            child: Text(
              "Flat Button",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
    );
  }
}