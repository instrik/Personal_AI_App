import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'screens/chat_screen.dart';

 // void equalPress() {
 //    String finalUserInput = userInput;
 //    finalUserInput = userInput.replaceAll('x', '*');
 //    Parser p = Parser();
 //    Expression expression = p.parse(finalUserInput);
 //    ContextModel contextModel = ContextModel();
 //    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
 //    answer = eval.toString();
 //  }

void main() {
  runApp(MyApp());
}

//trial comment

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
