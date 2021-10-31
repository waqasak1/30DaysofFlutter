import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mater_application/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  bool changeButton = false;

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
            Text("Welcome $name",
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
                    onChanged: (value) {
                      setState(() {});
                      name = value;
                    },
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
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 45,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8)),
              ),
            ),
            // ElevatedButton(
            //   style: TextButton.styleFrom(minimumSize: Size(150, 45)),
            //   child: Text("Login"),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
