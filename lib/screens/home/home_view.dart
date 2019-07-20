import 'package:flutter/material.dart';
import 'package:mandiri_plan/screens/widgets/holiday_card.dart';
import './home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Color(0xFF013D79),
                height: screenSize.height / 3,
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                            child: Image.asset("assets/mandiri-logo.png"),
                          ),
                          RichText(
                            text: new TextSpan(
                              text: 'Rp. ',
                              children: <TextSpan>[
                                new TextSpan(
                                    text: '3.000.000',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 25),
                              child: FlatButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/AutoDebit');
                                },
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.credit_card,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                    Text(
                                      'Manual Transfer',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 9),
                                    )
                                  ],
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 25),
                            child: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Navigator.pushNamed(context, '/AutoDebit');
                              },
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.credit_card,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Text(
                                    'Auto Debit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.calendar_today,
                                  size: 35, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      HolidayCard(
                        image: holiday[0]['image'],
                        location: holiday[0]['location'],
                        price: holiday[0]['price'],
                        theme: holiday[0]['theme'],
                        time: holiday[0]['time'],
                        mode: holiday[0]['mode'],
                      ),
                      HolidayCard(
                        image: holiday[1]['image'],
                        location: holiday[1]['location'],
                        price: holiday[1]['price'],
                        theme: holiday[1]['theme'],
                        time: holiday[1]['time'],
                        mode: holiday[0]['mode'],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        currentIndex: 0,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        backgroundColor: Color(0xFFf1f2f6),
        selectedItemColor: Color(0xFF013D79),
        unselectedItemColor: Color(0xFF013D79),
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.call, size: 35),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person, size: 35),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.inbox, size: 35),
            title: Container(height: 0.0),
          ),
        ],
      ),
    );
  }
}
