import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleButtonCard extends StatelessWidget {
  TitleButtonCard(
      {required this.buttonText,
      required this.buttonIcon,
      required this.buttonColor,
      required this.buttonSize});

  final String buttonText;
  final IconData buttonIcon;
  final Color buttonColor;
  final double buttonSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        children: [
          Text(
            buttonText,
            style:
                GoogleFonts.notoSans(fontSize: buttonSize, color: buttonColor),
          ),
          SizedBox(
            height: 6,
          ),
          Icon(
            buttonIcon,
            color: buttonColor,
            size: buttonSize * 1.6,
          ),
        ],
      ),
    );
  }
}
