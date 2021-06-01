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
                height: 316.0,
                width: 375.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/Frame 8.png'))),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30.0,
                    right: 29.0,
                  ),
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
                                        'assets/images/Rectangle 13.png')),
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
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Hello, Sebastian',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.5)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$ 272.30',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Your Balance',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 107.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xFF0070BA), Color(0xFF1546A0)]),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF1546A0).withOpacity(0.1),
                              blurRadius: 48.0,
                              spreadRadius: 16,
                              offset: Offset(2, 8))
                        ],
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        // border: Border.all(color: Color(0xFF0070BA), width: 2.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset('assets/images/Vectorei.svg'),
                            SizedBox(
                              height: 21.0,
                            ),
                            Text(
                              'Send\nMoney',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      width: 107.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF1546A0).withOpacity(0.1),
                              blurRadius: 48.0,
                              spreadRadius: 16,
                              offset: Offset(2, 8))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        // border: Border.all(color: Color(0xFF0070BA), width: 2.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                'assets/images/upload-alt 3ei.svg'),
                            SizedBox(
                              height: 21.0,
                            ),
                            Text(
                              'Request\nMoney',
                              style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      width: 66.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF1546A0).withOpacity(0.1),
                              blurRadius: 48.0,
                              spreadRadius: 16,
                              offset: Offset(2, 8))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        // border: Border.all(color: Color(0xFF0070BA), width: 2.0)
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                              'assets/images/Vectorellipses.svg')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 39.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Activity',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF243656)),
                    ),
                    Row(
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                HistoryTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HistoryTile extends StatelessWidget {
  const HistoryTile({
    Key key,
    this.leading,
    this.sub,
    this.title,
    this.trailing,
  }) : super(key: key);
  final String leading;
  final String title;
  final String sub;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color(0xFF1546A0).withOpacity(0.05),
              blurRadius: 48.0,
              spreadRadius: 5,
              offset: Offset(2.0, 30.0))
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        // tileColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Color(0xFFF5F7FA),
          child: SvgPicture.asset(leading),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF243656)),
        ),
        subtitle: Text(
          sub,
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF243656)),
        ),
        trailing: Text(
          trailing,
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF37D39B)),
        ),
      ),
    );
  }
}
