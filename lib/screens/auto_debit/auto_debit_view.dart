import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './auto_debit_view_model.dart';

class AutoDebitView extends AutoDebitViewModel {
  @override
  Widget build(BuildContext context) {
    var formatNumber = new NumberFormat('#,##0');
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AUTO DEBIT',
          style: TextStyle(fontSize: 15),
        ),
        backgroundColor: Color(0xFF013D79),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "KEYZA ANTA M.",
                      style: TextStyle(
                          color: Color(0xFF013D79),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "0123456789",
                      style: TextStyle(
                          color: Color(0xFF013D79),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: Image.asset("assets/mandiri-logo-ori.png"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: screenSize.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF013D79),
              ),
              child: Center(
                  child: RichText(
                text: new TextSpan(
                  text: 'Rp. ',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  children: <TextSpan>[
                    new TextSpan(
                        text: "${formatNumber.format(trueMoney)}",
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "INCOME",
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
                  child: Center(
                    child: RichText(
                      text: new TextSpan(
                        text: 'Rp. ',
                        style:
                            TextStyle(color: Color(0xFF013D79), fontSize: 18),
                        children: <TextSpan>[
                          new TextSpan(
                              text: '${formatNumber.format(income)}',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(
                              text: ' / ',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(
                            text: '$dropdownDuration',
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownPercent,
                        onChanged: (String newValue) {
                          changeIncome(newValue);
                        },
                        items: <String>["10", "20", "30", "40", "50"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              "$value%",
                              style: TextStyle(
                                  color: Color(0xFF013D79),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownDuration,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownDuration = newValue;
                          });
                        },
                        items: <String>["hari", "minggu", "bulan", "tahun"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              "/ $value",
                              style: TextStyle(
                                  color: Color(0xFF013D79),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
