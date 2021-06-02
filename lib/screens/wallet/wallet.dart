import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Frame 11.png'
                ),
                SizedBox(
                  height: 83.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Personal info',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 19.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                          SizedBox(
                            width: 37.0,
                          ),
                          Text(
                            'Sebastian Livingstone',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF243656)
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 19.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                          SizedBox(
                            width: 37.0,
                          ),
                          Text(
                            'sebas@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF243656)
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 19.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                          SizedBox(
                            width: 37.0,
                          ),
                          Text(
                            '+233 244 250 485',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF243656)
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 54.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My banking cards',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/Component 33.svg'
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                'Add',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF243656)
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset(
                              'assets/images/g4158.svg'
                            ),
                          ),
                          title: Text(
                            'Visa',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                          subtitle: Text(
                            '4*** **** ****2 4746',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset(
                              'assets/images/Group 10.svg'
                            ),
                          ),
                          title: Text(
                            'MasterCard',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                          subtitle: Text(
                            '4*** **** ****3 5236',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF243656)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 94.0,
            right: 106,
            child: Container(
              width: 160.0,
              height: 160.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(80)),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0
                )
              ),
              child: CircleAvatar(
                radius: 79,
                backgroundImage: AssetImage(
                  'assets/images/Rectangle 13.png',
                )
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              leading: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 27.0),
                  child: SvgPicture.asset(
                    'assets/images/Vector.svg'
                  ),
                )
              ],
              title: Text(
                'Your wallet',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
          ),
        ],
      )
    );
  }
}