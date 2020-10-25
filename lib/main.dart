import 'package:fltsm/screens/HomeScreen/main_home.dart';
import 'package:fltsm/screens/Preferences/preference_page.dart';
import 'package:fltsm/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constants.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Future<String> getName() async{
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var name = preferences.getString('name');
    print(name);
    return name;
  }
  @override
  Widget build(BuildContext context) {
    // var name = getName(); 
    return MaterialApp(
      title: 'SAYYAH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        // primarySwatch: Colors.blue,
        primaryColor: kPrimaryColor,
      ),
      
      initialRoute: '/',
      routes: {
    // When navigating to the "/" route, build the FirstScreen widget.

      '/': (context) => getName() == null ? WelcomeScreen():HomePage(),
      // '/': (context) => ProfilePage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
      
    //Navigation with extract route
      HomePage.routeName: (context) => HomePage(),
      PreferencePage.routeName: (context) => PreferencePage(title: "Select Preferences")
  },
      // home: LoginScreen(),
    );
  }
}


