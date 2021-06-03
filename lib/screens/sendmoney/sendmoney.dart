import 'package:flutter/material.dart';

class SendMoney extends StatefulWidget {

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Send Money',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Color(0xFF1546A0).withOpacity(0.05),
                      //       blurRadius: 48.0,
                      //       spreadRadius: 1,
                      //       offset: Offset(0.0, 50.0))
                      // ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      isThreeLine: true,
                      leading: Container(
                            width: 48.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Color(0xFFF5F7FA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                // border: Border.all(
                                //     color: Color(0xFF0070BA), width: 1.0)
                                  ),
                            child: Center(
                              child: Text(
                                'A',
                                style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF243656)
                          ),
                              ),
                            ),
                          ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'To:',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF243656).withOpacity(0.5)),
                          ),
                          Text(
                            'Andy Apenteng',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF243656)),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'apenteng001@gmail.com',
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF243656).withOpacity(0.5)),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}