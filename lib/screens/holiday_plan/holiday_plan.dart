import 'package:flutter/material.dart';
import './holiday_plan_view.dart';

class HolidayPlan extends StatefulWidget {
  HolidayPlan({this.location, this.time, this.image, this.price, this.theme});

  final location, time, image, price, theme;

  @override
  HolidayPlanView createState() => new HolidayPlanView();
}
