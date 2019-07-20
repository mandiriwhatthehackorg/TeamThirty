import 'package:flutter/material.dart';
import 'package:mandiri_plan/screens/widgets/holiday_card.dart';
import './holiday_plan_view_model.dart';

class HolidayPlanView extends HolidayPlanViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HOLIDAY PLAN',
          style: TextStyle(fontSize: 15),
        ),
        backgroundColor: Color(0xFF013D79),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            HolidayCard(
              mode: 1,
              image: widget.image,
              location: widget.location,
              price: widget.price,
              theme: widget.theme,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "PLAN",
                style: TextStyle(
                    color: Color(0xFF013D79), fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 5),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.calendar_today,
                        color: Color(0xFF013D79),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "17 Agustus 2019",
                          style:
                              TextStyle(color: Color(0xFF013D79), fontSize: 13),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "HOTEL",
                style: TextStyle(
                    color: Color(0xFF013D79), fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 5),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.hotel,
                        color: Color(0xFF013D79),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Hotel Nusantara Indonesia",
                              style: TextStyle(
                                  color: Color(0xFF013D79), fontSize: 13),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Rp ",
                                  style: TextStyle(
                                      color: Color(0xFF013D79), fontSize: 13),
                                ),
                                Text(
                                  "2.000.000",
                                  style: TextStyle(
                                      color: Color(0xFF013D79),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "PESAWAT",
                style: TextStyle(
                    color: Color(0xFF013D79), fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 5),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.flight_takeoff,
                        color: Color(0xFF013D79),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Hotel Nusantara Indonesia",
                              style: TextStyle(
                                  color: Color(0xFF013D79), fontSize: 13),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Rp ",
                                  style: TextStyle(
                                      color: Color(0xFF013D79), fontSize: 13),
                                ),
                                Text(
                                  "2.000.000",
                                  style: TextStyle(
                                      color: Color(0xFF013D79),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF013D79),
      ),
    );
  }
}
