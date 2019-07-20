import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mandiri_plan/routes.dart';
import 'package:mandiri_plan/screens/widgets/introducing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFF013D79),
        systemNavigationBarColor: Color(0xFF013D79),
        systemNavigationBarIconBrightness: Brightness.light));
    return MaterialApp(
      title: 'Pariwisata Mandiri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.red,
          iconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: Introducing(),
      routes: routes,
    );
  }
}
