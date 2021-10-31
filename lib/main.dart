import 'package:flutter/material.dart';
import 'package:mater_application/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mater_application/pages/login.dart';
import 'package:mater_application/utils/routes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/login",
      routes: {
        "/": (context) => MyHome(),
        MyRoutes.homeRoute: (context) => MyHome(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
