import 'package:flutter/material.dart';
import 'package:paypal_redesign/models/contactsData.dart';
import 'package:paypal_redesign/models/numpad.dart';

class SendMoney extends StatefulWidget {
  final PaypalContacts paypalContacts;
  // final String text;
  SendMoney({@required this.paypalContacts});
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  TextEditingController _amountController = TextEditingController();
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      _amountController.text = _amountController.text + value;
      print('$value tapped');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
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
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    // border: Border.all(
                    //     color: Color(0xFF0070BA), width: 1.0)
                  ),
                  child: Center(
                    child: Text(
                      widget.paypalContacts.name[0],
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF243656)),
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
                      widget.paypalContacts.name,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF243656)),
                    ),
                  ],
                ),
                subtitle: Text(
                  widget.paypalContacts.sub,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF243656).withOpacity(0.5)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
              style: TextStyle(
                  color: Color(0xFF243656),
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  fontSize: 40),
              readOnly: true,
              controller: _amountController,
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  prefixIcon: Text(
                    '\$',
                    style: TextStyle(
                        color: Color(0xFF243656),
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        fontSize: 40),
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color(0xFF0070BA), width: 2.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color(0xFF0070BA), width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color(0xFF0070BA), width: 1.0))),
            ),
          ),
          NumericKeyboard(
            onKeyboardTap: _onKeyboardTap,
            textColor: Colors.black,
            rightButtonFn: () {
              setState(() {
                _amountController.text = _amountController.text
                    .substring(0, _amountController.text.length - 1);
                print('delete key pressed');
              });
            },
            rightIcon: Icon(
              Icons.backspace_outlined,
              color: Colors.black,
            ),
            leftButtonFn: () {
              print('left button clicked');
            },
            leftIcon: Icon(
              Icons.check,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 52.0,
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
                    color: Color(0xFF1546A0).withOpacity(0.19),
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
                  'Send',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
