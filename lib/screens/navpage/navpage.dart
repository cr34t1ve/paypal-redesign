import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paypal_redesign/screens/contacts/contacts.dart';
import 'package:paypal_redesign/screens/home/home.dart';
import 'package:paypal_redesign/screens/wallet/wallet.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _currentIndex = 0;

  final tabs = [
    Home(),
    Contacts(),
    Wallet(),
    Center(child: Text('Settings')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        showElevation: false,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        items: [
          BottomNavyBarItem(
            activeColor: Colors.white,
            // inactiveColor: Colors.red,
              icon: SvgPicture.asset(
                'assets/images/home-alt 1.svg',
                // color: Colors.blue,
              ),
              title:Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFF0070BA),
                  fontFamily: 'Manrope',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400
                ),
              ) 
            ),
          BottomNavyBarItem(
            activeColor: Colors.white,
              icon: SvgPicture.asset('assets/images/users-alt 1.svg'),
              title:Text(
                'Contacts',
                style: TextStyle(
                  color: Color(0xFF0070BA),
                  fontFamily: 'Manrope',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400
                ),
                ) ),
          BottomNavyBarItem(
            activeColor: Colors.white,
              icon: SvgPicture.asset(
                  'assets/images/wallet 1.svg'),
              title:Text(
                'Wallet',
                style: TextStyle(
                  color: Color(0xFF0070BA),
                  fontFamily: 'Manrope',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400
                ),
              ) ),
          BottomNavyBarItem(
            activeColor: Colors.white,
              icon: SvgPicture.asset('assets/images/setting 1.svg'),
              title:Text(
                'Settings',
                style: TextStyle(
                  color: Color(0xFF0070BA),
                  fontFamily: 'Manrope',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400
                ),
              ) )
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}
