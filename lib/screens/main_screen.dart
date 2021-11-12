import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_mot1vation/buttons/switch_button.dart';
import 'package:one_mot1vation/constants.dart';
import 'package:one_mot1vation/buttons/title_button.dart';
import 'package:one_mot1vation/buttons/days_in_week.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'One mot1vation',
          style: GoogleFonts.notoSans(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        child: Column(
          // flex ratio: 1:1:5:2
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bedtime schedule',
                      style: GoogleFonts.notoSans(fontSize: 18),
                    ),
                    SwitchButton(),
                  ],
                ),
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.blueGrey[900],
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: DaysInWeek(weekDay: 'M')),
                  Expanded(child: DaysInWeek(weekDay: 'T')),
                  Expanded(child: DaysInWeek(weekDay: 'W')),
                  Expanded(child: DaysInWeek(weekDay: 'T')),
                  Expanded(child: DaysInWeek(weekDay: 'F')),
                  Expanded(child: DaysInWeek(weekDay: 'S')),
                  Expanded(child: DaysInWeek(weekDay: 'S')),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                child: Text('Beautiful clock here'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          '00:00',
                          style: GoogleFonts.notoSans(fontSize: 46.0),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: TitleButtonCard(
                          buttonText: 'Bedtime',
                          buttonColor: kTeal,
                          buttonIcon: Icons.bed,
                          buttonSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          '00:00',
                          style: GoogleFonts.notoSans(fontSize: 46),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: TitleButtonCard(
                            buttonText: 'Wake Up',
                            buttonIcon: Icons.alarm,
                            buttonColor: kTeal,
                            buttonSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
