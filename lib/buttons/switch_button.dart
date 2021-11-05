import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_mot1vation/constants.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
        activeColor: kTeal,
        value: _switchValue,
        onChanged: (value) {
          setState(() {
            _switchValue = value;
          });
        });
  }
}
