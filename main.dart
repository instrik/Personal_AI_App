import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'screens/chat_screen.dart';



void main() {
  runApp(MyApp());
}
//trial comment 1
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: kCardColor,
        ),
      ),
      home: ChatScreen(),
    );
  }
}
