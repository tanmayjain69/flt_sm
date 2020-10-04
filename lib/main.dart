import 'package:fltsm/screens/Welcome/welcome_screen.dart';
import 'package:fltsm/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        // primarySwatch: Colors.blue,
        primaryColor: kPrimaryColor,
      ),
      initialRoute: '/',
      routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
      // '/': (context) => LoginScreen(),
      '/': (context) => WelcomeScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.
      
    //Navigation with extract route
      ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
  },
      // home: LoginScreen(),
    );
  }
}


