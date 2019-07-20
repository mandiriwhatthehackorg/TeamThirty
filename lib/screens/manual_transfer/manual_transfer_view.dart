import 'package:flutter/material.dart';
import 'package:mandiri_plan/helpers/mandiri_plan_icon_icons.dart';
import './manual_transfer_view_model.dart';

class ManualTransferView extends ManualTransferViewModel {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF013D79),
          ),
        ),
        title: Text(
          'MANUAL TRANSFER',
          style: TextStyle(fontSize: 15, color: Color(0xFF013D79)),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: screenSize.width,
              padding: EdgeInsets.symmetric(vertical: 25),
              color: Color(0xFF013D79),
              child: Column(
                children: <Widget>[
                  Text(
                    "SALDO",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Rp. ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "3.000.000",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  width: screenSize.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(
                              MandiriPlanIcon.credit_card,
                              size: 70,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Isi Saldo melalui HIMBARA",
                                  style: TextStyle(
                                    color: Color(0xFF2f3542),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Isi saldo bebas biaya admin dari Bank Mandiri, Bank BNI, Bank BTN, dan Bank BRI.",
                                  style: TextStyle(
                                      color: Color(0xFF2f3542), fontSize: 13),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  width: screenSize.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(
                              MandiriPlanIcon.credit_card,
                              size: 70,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Transfer Bank",
                                  style: TextStyle(
                                    color: Color(0xFF2f3542),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Isi saldo melalui ATM, SMS Banking, Mobile Banking dan Internet Banking melalui Bank lainnya.",
                                  style: TextStyle(
                                      color: Color(0xFF2f3542), fontSize: 13),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  width: screenSize.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(
                              MandiriPlanIcon.debit_card,
                              size: 70,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Kartu Kredit",
                                  style: TextStyle(
                                    color: Color(0xFF2f3542),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Isi saldo kapanpun, dimanapun dengan kartu debit langsung di aplikasi.",
                                  style: TextStyle(
                                      color: Color(0xFF2f3542), fontSize: 13),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
