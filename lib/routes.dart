import 'package:flutter/material.dart';
import 'package:mandiri_plan/screens/home/home.dart';
import 'package:mandiri_plan/screens/manual_transfer/manual_transfer.dart';
import 'package:mandiri_plan/screens/sign_in/sign_in.dart';
import 'package:mandiri_plan/screens/auto_debit/auto_debit.dart';

final Map<String, WidgetBuilder> routes = {
  '/Home': (BuildContext context) => Home(),
  '/SignIn': (BuildContext context) => SignIn(),
  '/AutoDebit': (BuildContext context) => AutoDebit(),
  '/ManualTransfer': (BuildContext context) => ManualTransfer(),
};
