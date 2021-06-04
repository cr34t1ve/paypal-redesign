import 'package:flutter/material.dart';
import 'package:paypal_redesign/screens/activity/activity.dart';
import 'package:paypal_redesign/screens/login/login.dart';
import 'package:paypal_redesign/screens/navpage/navpage.dart';
import 'package:paypal_redesign/screens/sendmoney/sendmoney.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
      '/navpage': (context) => NavPage(),
      '/activity': (context) => Activity(),
      '/sendmoney': (context) => SendMoney(paypalContacts: null),
    },
  ));
}