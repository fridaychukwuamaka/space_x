import 'package:flutter/material.dart';
import 'package:space_x/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFFFF003D),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontFamily: 'Google-sans',
          ),
          bodyText2: TextStyle(
            fontFamily: 'Google-sans',
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          subtitle2: TextStyle(
            fontFamily: 'Google-sans',
            fontWeight: FontWeight.normal,
          ),
          headline5: TextStyle(
            fontFamily: 'Google-sans',
            fontWeight: FontWeight.normal,
            fontSize: 22,
          ),
          headline6: TextStyle(
            fontFamily: 'Google-sans',
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
          button: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontFamily: 'Google-sans',
          ),
        ),
        scaffoldBackgroundColor: Color(0xFF000000),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
