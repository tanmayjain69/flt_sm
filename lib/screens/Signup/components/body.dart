import 'package:fltsm/services/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:fltsm/Screens/Login/login_screen.dart';
import 'package:fltsm/Screens/Signup/components/background.dart';
import 'package:fltsm/Screens/Signup/components/or_divider.dart';
import 'package:fltsm/Screens/Signup/components/social_icon.dart';
import 'package:fltsm/components/already_have_an_account_acheck.dart';
import 'package:fltsm/components/rounded_button.dart';
import 'package:fltsm/components/rounded_input_field.dart';
import 'package:fltsm/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  var _formKey = GlobalKey<FormState>(); 
  var name,password,email,firstName,token;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) {
                name = value;
              },
            ),
             RoundedInputField(
              hintText: "Your Email",
              
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password =value;
              },
            ),
            
            RoundedButton(
              text: "SIGNUP",
              press: () {
                if (_formKey.currentState.validate()){
                AuthService().addUser(name, password, email).then((value){
                
                    Fluttertoast.showToast(msg: 
                    value.data['msg'],
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
      )
    );
  }
}