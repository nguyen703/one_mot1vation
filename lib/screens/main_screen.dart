import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_mot1vation/buttons/switch_button.dart';
import 'package:one_mot1vation/constants.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bedtime schedule',
                  style: GoogleFonts.notoSans(fontSize: 18),
                ),
                SwitchButton(),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.palette_rounded,
                  color: kWhite,
                ),
                Icon(Icons.ac_unit, color: kWhite),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
