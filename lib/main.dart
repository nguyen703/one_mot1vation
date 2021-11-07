import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:one_mot1vation/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kDarkBlue,
        primaryColor: kDarkBlue,
        iconTheme: IconThemeData(color: kWhite),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kWhite),
        ),
      ),
      home: MainScreen(),
    );
  }
}
