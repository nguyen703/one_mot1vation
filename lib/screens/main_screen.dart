import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_mot1vation/buttons/switch_button.dart';
import 'package:one_mot1vation/constants.dart';
import 'package:one_mot1vation/buttons/title_button.dart';

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
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.palette_rounded,
                    color: kWhite,
                  ),
                  Icon(Icons.ac_unit, color: kWhite),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                child: Text('Hello'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Text(
                          '00:00',
                          style: GoogleFonts.notoSans(fontSize: 40.0),
                        ),
                      ),
                      Expanded(
                        child: TitleButton(
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
                        child: Text(
                          '00:00',
                          style: GoogleFonts.notoSans(fontSize: 40),
                        ),
                      ),
                      Expanded(
                        child: TitleButton(
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
