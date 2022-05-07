import 'package:diplomka/hi_page.dart';
import 'package:diplomka/register_page.dart';
import 'package:diplomka/sms_page.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(44, 41, 41, 1),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            //   borderRadius: BorderRadius.all(Radius.circular(90))
          ),
          labelStyle: TextStyle(
          fontSize: 35,
          decorationColor: Colors.red,
          ),
        ),
      ),
      home: const MenuPage(),
      routes: {
        '/hi_page': (context) => HiPage(),
        '/register_page': (context) => RegisterPage(),
        '/login_page': (context) => LoginPage(),
        '/sms_page': (context) => SmsPage(),
        '/menu_page': (context) => MenuPage(),
      },
      // initialRoute: '/hi_page',
    );
  }
}