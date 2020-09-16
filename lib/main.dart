import 'package:fltsm/screens/homescreen.dart';
import 'package:fltsm/screens/loginscreen.dart';
import 'package:fltsm/screens/registerscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => LoginScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.
      '/register': (context) => RegisterScreen(),
    //Navigation with extract route
      ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
  },
      // home: LoginScreen(),
    );
  }
}


