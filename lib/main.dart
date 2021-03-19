import 'package:fltsm/screens/HomeScreen/main_home.dart';
import 'package:fltsm/screens/Preferences/preference_page.dart';
import 'package:fltsm/screens/Welcome/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'constants.dart';
Future<void> main() async {
    await GetStorage.init();
    runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(GetStorage().read('name'));
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

      '/': (context) => GetStorage().hasData('name') ?  HomePage() : WelcomeScreen(),
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


