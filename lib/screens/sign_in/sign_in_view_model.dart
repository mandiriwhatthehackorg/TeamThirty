import 'package:flutter/material.dart';
import './sign_in.dart';

abstract class SignInViewModel extends State<SignIn> {
  // Add your state and logic here
  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputContoller = TextEditingController();
}
