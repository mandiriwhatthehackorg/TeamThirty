import 'package:flutter/material.dart';
import './auto_debit.dart';

abstract class AutoDebitViewModel extends State<AutoDebit> {
  // Add your state and logic here
  String dropdownPercent = "10";
  String dropdownDuration = "bulan";

  int trueMoney = 5000000;
  double income = 500000;

  void changeIncome(newValue) {
    setState(() {
      dropdownPercent = newValue;
      income = (trueMoney / 100) * int.parse(newValue);
    });
  }
}
