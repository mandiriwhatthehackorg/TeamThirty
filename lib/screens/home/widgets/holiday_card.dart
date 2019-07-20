import 'package:flutter/material.dart';

class HolidayCard extends StatelessWidget {
  HolidayCard({this.image, this.theme, this.location, this.time, this.price});

  final image, theme, location, time, price;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 200,
      margin: EdgeInsets.only(bottom: 15),
      width: screenSize.width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  '${location ?? "Bali"}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: theme != "dark"
                                          ? Colors.white
                                          : Color(0xFF2f3542),
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '/',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: theme != "dark"
                                          ? Colors.white
                                          : Color(0xFF2f3542),
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  ' ${time ?? "1 Minggu"}',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: theme != "dark"
                                          ? Colors.white
                                          : Color(0xFF2f3542),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'RP',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: theme != "dark"
                                          ? Colors.white
                                          : Color(0xFF2f3542),
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '${price ?? "3.000.000"}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: theme != "dark"
                                          ? Colors.white
                                          : Color(0xFF2f3542),
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Color(0xFF013D79),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Hotel',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Tiket Pesawat',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
