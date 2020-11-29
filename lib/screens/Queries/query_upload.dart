import 'dart:convert';
import 'package:fltsm/controllers/profile_controller.dart';
import 'package:fltsm/controllers/query_controller.dart';
import 'package:fltsm/screens/Profile/Components/settings.dart';
import 'package:fltsm/services/query.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';




class QueryUpload extends StatefulWidget {
  @override
  _QueryUpload createState() => _QueryUpload();
}

class _QueryUpload extends State<QueryUpload> {

  ProfileController inst = Get.find();
  QueryController query = Get.find();
  final TextEditingController tagcont = TextEditingController(); 
  final TextEditingController detailscont = TextEditingController(); 
  // final TextEditingController detcont = TextEditingController(); 
  
  var data = new Map();

  bool showPassword = false;

  void update(){
            print(tagcont.text+detailscont.text);
                      
                      if(tagcont.text == " " || detailscont.text == " "){
                        Fluttertoast.showToast(
                        msg: "Nothing to Update",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                       
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                        );
                      }
                      else{
                      data['name'] = inst.profiledetails[0].name;
                      data['tag'] = tagcont.text;
                      data['details'] = detailscont.text;
                      query.addQuery(data);
                      
                    }
                      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              
             
              SizedBox(
                height: 35,
              ),
              buildTextField("Community","Select Community", false,tagcont),
              buildTextField("Details", "Add Details",false,detailscont),
              // buildTextField("Mobile Number", "01234567", false),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  RaisedButton(
                    onPressed: () { 
                      update();
                    },
                    color:  Color(0xFFFFE3D3),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        controller: controller,
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 14,
              
              color: Colors.black,
            )),
      ),
    );
  }
}