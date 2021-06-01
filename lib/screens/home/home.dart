import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 272.0,
                width: 375.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/Frame 8.png'))),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 29.0, right: 29.0, bottom: 28.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/images/Group.svg'),
                          Container(
                            width: 55.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Rectangle 13.png'
                                )
                              ),
                                color: Color(0xFF0070BA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: Color(0xFF0070BA), width: 2.0)),
                            // child: Image.asset(
                            //   'assets/images/Rectangle 13.png'
                            // )
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
