import 'package:flutter/material.dart';

class Introducing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/SignIn');
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/introducing.jpg'),
                fit: BoxFit.cover)),
      ),
    ));
  }
}
