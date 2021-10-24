import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Home Page",
            style: TextStyle(
                fontSize: 24,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Credit Book",
        ),
      ),
      drawer: Drawer(),
    );
  }
}
