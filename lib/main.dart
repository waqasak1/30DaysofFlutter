import 'package:flutter/material.dart';
import 'package:mater_application/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mater_application/login.dart';

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
        "/home": (context) => MyHome(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
