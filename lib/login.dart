import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Login",
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 24,
                  fontFamily: GoogleFonts.lobster().fontFamily)),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "User Name", hintText: "Enter User Name"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print("hi waqas");
            },
          )
        ],
      ),
    );
  }
}
