import 'package:fltsm/screens/HomeScreen/main_home.dart';
import 'package:fltsm/screens/Login/components/background.dart';
import 'package:fltsm/screens/Preferences/preference_page.dart';
import 'package:fltsm/services/authenticate.dart';
import 'package:fltsm/services/preference.dart';
import 'package:flutter/material.dart';
import 'package:fltsm/Screens/Signup/signup_screen.dart';
import 'package:fltsm/components/already_have_an_account_acheck.dart';
import 'package:fltsm/components/rounded_button.dart';
import 'package:fltsm/components/rounded_input_field.dart';
import 'package:fltsm/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var name,password,token,resp_name;

   List<String> reportList = [
    "Travel",
    "Books",
    "Drama",
    "Music",
  ];

  List<String> selectedReportList = List();

  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          return AlertDialog(
            title: Text("Select Preferences"),
            content: MultiSelectChip(
              reportList,
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedReportList = selectedList;
                });
              },
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Next"),
                onPressed: () => {
                Navigator.of(context).pop(),
                PreferenceService().addPreference(resp_name, selectedReportList)
                }
              )
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                name = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                AuthService().login(name, password).then((val){
                  if(val.data['success']){
                    token = val.data['token'];

                    Fluttertoast.showToast(msg: 
                    'Authenticated',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0
                    );
                    AuthService().getinfo(token).then((val) async{
                      if(val.data['success']){
                        SharedPreferences preferences = await SharedPreferences.getInstance();
                        preferences.setString('name', val.data['msg']);
                        token = val.data['token'];
                        Fluttertoast.showToast(msg: 
                        val.data['msg'],
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0
                        );
                        //for going to homescreen
                        Navigator.pushNamed(
                            context,
                            HomePage.routeName,
                            
                        );
                        resp_name = val.data['msg'];
                        _showReportDialog();
                      }
                    });  
                  }
                  else{
                    Fluttertoast.showToast(msg: 
                    'Invalid User',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0
                    );
                  }
                });

              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}