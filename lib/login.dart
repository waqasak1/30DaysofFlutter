import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Welcome",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 28,
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
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(minimumSize: Size(150, 45)),
              child: Text("Login"),
              onPressed: () {
                print("hi waqas");
              },
            )
          ],
        ),
      ),
    );
  }
}
