import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 175.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/Grouppaypal.svg'),
              ],
            ),
            SizedBox(
              height: 98.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.0),
              child: Column(
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _emailController,
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Enter your name or e-mail',
                        hintStyle: TextStyle(
                            color: Color(0xFF243656).withOpacity(0.5),
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF5F7FA), width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF5F7FA), width: 1.0))),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    controller: _passController,
                    autofocus: false,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        focusColor: Colors.black,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Color(0xFF243656).withOpacity(0.5),
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                BorderSide(color: Color(0xFFF5F7FA), width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                                color: Color(0xFFF5F7FA), width: 1.0))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              height: 64,
              width: 311,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFF0070BA), Color(0xFF1546A0)]),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF1546A0).withOpacity(0.16),
                      blurRadius: 48.0,
                      spreadRadius: 18,
                      offset: Offset(0, 26))
                ],
              ),
              child: FlatButton(
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              height: 67.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Having trouble logging in?',
                  style: TextStyle(
                      color: Color(0xFF243656).withOpacity(0.5),
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 29.0,
            ),
            SizedBox(
              width: 65,
              child: Divider(),
            ),
            SizedBox(
              height: 22.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign up',
                  style: TextStyle(
                      color: Color(0xFF243656).withOpacity(0.5),
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
