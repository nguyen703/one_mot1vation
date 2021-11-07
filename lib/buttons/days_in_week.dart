import 'package:flutter/material.dart';
import 'package:one_mot1vation/constants.dart';

class DaysInWeek extends StatefulWidget {
  DaysInWeek({required this.weekDay});

  final String weekDay;
  @override
  _DaysInWeekState createState() => _DaysInWeekState();
}

class _DaysInWeekState extends State<DaysInWeek> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isEnabled = !isEnabled;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
      ),
      child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: isEnabled ? kEnabledBackground : kDisabledBackground,
            shape: BoxShape.circle,
          ),
          child: Text(
            widget.weekDay,
            style: TextStyle(
              color: isEnabled ? kEnabledText : kDisabledText,
              fontSize: 18,
            ),
          )),
    );
  }
}
