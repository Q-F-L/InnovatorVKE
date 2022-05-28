import 'package:flutter/material.dart';

import 'Pages/create_project.dart';
import 'Pages/create_project_after.dart';
import 'Pages/create_project_now.dart';
import 'Pages/create_project_will_be.dart';
import 'Pages/detail_project_page.dart';
import 'Pages/hi_page.dart';
import 'Pages/list_project_page.dart';
import 'Pages/login.dart';
import 'Pages/massage_page.dart';
import 'Pages/menu_page.dart';
import 'Pages/register_page.dart';
import 'Pages/sms_page.dart';
import 'Pages/user_page.dart';

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
      home: ListProjectPage(),
      routes: {
        '/hi_page': (context) => HiPage(),
        '/register_page': (context) => RegisterPage(),
        '/login_page': (context) => LoginPage(),
        '/sms_page': (context) => SmsPage(),
        '/menu_page': (context) => MenuPage(),
        '/create_page': (context) => CreatePage(),
        '/create_now_page': (context) => CreateNowPage(),
        '/create_after_page': (context) => CreateAfterPage(),
        '/create_will_be_page': (context) => CreateWillBePage(),
        '/user_page': (context) => UserPage(),
        '/list_project_page': (context) => ListProjectPage(),
        '/detail_project_page': (context) => DetailProjectPage(),
        '/message_page': (context) => MassagetPage(),
      },
    );
  }
}





