import 'package:flutter/material.dart';
import 'package:fltsm/services/authenticate.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var name,password,token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
            decoration: InputDecoration(
              labelText: 'Name'
            ),
            onChanged: (val){
              name = val;
            },
            ),
            TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password'
            ),
            onChanged: (val){
              password = val; 
            } 
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text('Add User'),
              color:  Colors.green,
              onPressed: (){
                AuthService().addUser(name, password).then((val){
                
                    Fluttertoast.showToast(msg: 
                    val.data['msg'],
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0
                    );
                  
                });
              },
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text('Back'),
              color:  Colors.green,
              onPressed: (){
                 Navigator.pop(context);
              },
            ),
          ]
          )
       )
    );
  }
}