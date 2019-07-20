import 'package:flutter/material.dart';
import 'package:pariwisata_mandiri/screens/home/home.dart';
import 'package:pariwisata_mandiri/screens/sign_in/sign_in.dart';

final Map<String, WidgetBuilder> routes = {
  '/Home': (BuildContext context) => Home(),
  '/SignIn': (BuildContext context) => SignIn(),
};
