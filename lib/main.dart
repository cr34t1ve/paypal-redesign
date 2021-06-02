import 'package:flutter/material.dart';
import 'package:paypal_redesign/screens/activity/activity.dart';
import 'package:paypal_redesign/screens/contacts/contacts.dart';
import 'package:paypal_redesign/screens/home/home.dart';
import 'package:paypal_redesign/screens/login/login.dart';
import 'package:paypal_redesign/screens/wallet/wallet.dart';

void main() {
  runApp(MaterialApp(
    home: Contacts(),
    debugShowCheckedModeBanner: false,
  ));
}