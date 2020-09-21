import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fltsm/services/authenticate.dart';
import 'package:fluttertoast/fluttertoast.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _formKey = GlobalKey<FormState>(); 
  var name,password,email,firstName,token;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: Form( 
       key: _formKey,
       child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
            decoration: InputDecoration(
              labelText: 'User Name'
            ),
            onChanged: (val){
              name = val;
            },
            
            ),
            TextFormField(
            validator: (String value){
              final bool isValid = EmailValidator.validate(value);
              if(!isValid){
                return "Please Enter a valid email";
              }
            },
            decoration: InputDecoration(
              labelText: 'Email'
            ),

            onChanged: (val){
              email = val;
            },
            
            ),
            
            TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password'
            ),
            onChanged: (val){
              password = val; 
            } 
            ),
            TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirm Password'
            ),
            
            
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text('Add User'),
              color:  Colors.green,
              onPressed: (){
                if (_formKey.currentState.validate()){
                AuthService().addUser(name, password, email).then((val){
                
                    Fluttertoast.showToast(msg: 
                    val.data['msg'],
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0
                    );
                  
                });
              }
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
       )
    );
  }
}