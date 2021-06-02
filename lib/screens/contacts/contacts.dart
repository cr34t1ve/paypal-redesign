import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  TextEditingController _emailController = TextEditingController();
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
          'Contacts',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 29.0),
            child: SvgPicture.asset('assets/images/Component 25.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
                      // textAlign: TextAlign.center,
                      controller: _emailController,
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search
                        ),
                          hintText: 'Enter a name or e-mail',
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
          ),
        ],
      ),
    );
  }
}