import 'package:flutter/material.dart';
import 'package:flutter_basic_list/homepage.dart';
import 'package:flutter_basic_list/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText1: Body1TextStyle,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
