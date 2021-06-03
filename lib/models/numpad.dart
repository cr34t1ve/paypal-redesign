library numeric_keyboard;

import 'package:flutter/material.dart';

typedef KeyboardTapCallback = void Function(String text);

class NumericKeyboard extends StatefulWidget {
  /// Color of the text [default = Colors.black]
  final Color textColor;

  /// Display a custom right icon
  final Icon rightIcon;

  /// Action to trigger when right button is pressed
  final Function() rightButtonFn;

  /// Display a custom left icon
  final Icon leftIcon;

  /// Action to trigger when left button is pressed
  final Function() leftButtonFn;

  /// Callback when an item is pressed
  final KeyboardTapCallback onKeyboardTap;

  /// Main axis alignment [default = MainAxisAlignment.spaceEvenly]
  final MainAxisAlignment mainAxisAlignment;

  NumericKeyboard(
      {Key key,
      @required this.onKeyboardTap,
      this.textColor = Colors.black,
      this.rightButtonFn,
      this.rightIcon,
      this.leftButtonFn,
      this.leftIcon,
      this.mainAxisAlignment = MainAxisAlignment.spaceEvenly})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NumericKeyboardState();
  }
}

class _NumericKeyboardState extends State<NumericKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(left: 32, right: 32, top: 20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton('1'),
              _calcButton('2'),
              _calcButton('3'),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton('4'),
              _calcButton('5'),
              _calcButton('6'),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton('7'),
              _calcButton('8'),
              _calcButton('9'),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton('0'),
              _calcButton('.'),
              InkWell(
                  borderRadius: BorderRadius.circular(45),
                  onTap: widget.rightButtonFn,
                  child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: widget.rightIcon))
            ],
          ),
        ],
      ),
    );
  }

  Widget _calcButton(String value) {
    return InkWell(
        borderRadius: BorderRadius.circular(45),
        onTap: () {
          widget.onKeyboardTap(value);
          
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            // borderRadius:
            //                         BorderRadius.all(Radius.circular(20)),
            boxShadow: [
                  BoxShadow(
                      color: Color(0xFF1546A0).withOpacity(0.07),
                      blurRadius: 48.0,
                      spreadRadius: 1,
                      offset: Offset(0.0, 50.0))
                ],
          ),
          alignment: Alignment.center,
          width: 72.75,
          height: 72,
          child: Text(
            value,
            style: TextStyle(
              fontFamily: 'Manrope',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF243656)
                ),
          ),
        ));
  }
}
