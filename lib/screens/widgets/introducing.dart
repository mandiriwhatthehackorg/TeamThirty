import 'package:flutter/material.dart';

class Introducing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/SignIn');
          },
          child: Container(
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Image.asset("assets/mandiri-logo-ori.png"),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  child: Image.asset("assets/master.png"),
                ),
                SizedBox(height: 70),
                Text(
                  'CLICK THE SCREEN!',
                  style: TextStyle(fontSize: 16, color: Color(0xFF013D79)),
                )
              ],
            ),
          ),
        ));
  }
}
