import 'package:flutter/material.dart';

class Introducing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/SignIn');
          },
          child: Container(
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/introducing.jpg'),
                    fit: BoxFit.cover)),
          ),
        ));
  }
}
