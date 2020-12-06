import 'package:fltsm/screens/Profile/ppage.dart';
import 'package:fltsm/screens/Queries/query_main.dart';
import 'package:fltsm/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fltsm/screens/HomeScreen/feed.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';



class HomePage extends StatefulWidget {
  static const routeName = '/extractArguments';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    Feed(),
    QueryMain(),
    Feed(),
    Feed(),
    ProfilePage(),
  ];

  int currentPage = 0;

  Future logout(BuildContext context)async{
    GetStorage().remove('name');
    Get.reset();
    Navigator.push(context, 
    MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ));
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "SAYYAH",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {logout(context);},
          icon: Icon(
            Feather.log_out,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
            Navigator.push(context, 
    MaterialPageRoute(
                    builder: (context) {
                      return QueryMain();
                    },
                  ));
            },
            icon: Icon(
              Feather.send,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.dollar,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
          
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Foundation.home),
            title: Text("Feed")
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search),
            title: Text("Search")
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square),
            title: Text("Upload")
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            title: Text("Likes")
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: Text("Account"),
            
          ),
        ],
        
      ),
    );
  }
}
