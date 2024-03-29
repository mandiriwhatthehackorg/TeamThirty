import 'package:flutter/material.dart';
import './home.dart';

abstract class HomeViewModel extends State<Home> {
  int currentIndex = 0;
  List<Map> children = [
    {
      "name": "Call",
      "page": Container(),
      "unSelectedColor": 0xFFa4b0be,
      "selectedColor": 0xFF2ED573,
      "background": 0xFF2F3542
    },
    {
      "name": "Menu",
      "page": Container(),
      "unSelectedColor": 0xFFa4b0be,
      "selectedColor": 0xFF2ED573,
      "background": 0xFF2F3542
    }
  ];

  List holiday = [
    {
      "image": "assets/bali.jpg",
      "location": "Bali",
      "price": "3.000.000",
      "theme": 0,
      "time": "1 Minggu",
      "mode": 0
    },
    {
      "image": "assets/bangkok.jpg",
      "location": "Bangkok",
      "price": "8.000.000",
      "theme": 1,
      "time": "1 Minggu",
      "mode": 0
    },
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
