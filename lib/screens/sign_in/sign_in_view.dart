import 'package:flutter/material.dart';
import './sign_in_view_model.dart';

class SignInView extends SignInViewModel {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
              child: Image.asset("assets/mandiri-logo-ori.png"),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            // Form
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: emailInputController,
                    style: TextStyle(color: Color(0xFF013D79)),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF013D79))),
                        hintText: "Email or username",
                        hintStyle: TextStyle(
                            color: Color(0xFF013D79).withOpacity(0.5))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: passwordInputContoller,
                    style: TextStyle(color: Color(0xFF013D79)),
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF013D79))),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Color(0xFF013D79).withOpacity(0.5))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Color(0xff0D59B1),
                      ),
                      child: FlatButton(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.5),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 20),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Home');
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
