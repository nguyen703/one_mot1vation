import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleButton extends StatelessWidget {
  TitleButton(
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
    return Column(
      children: [
        Text(
          buttonText,
          style: GoogleFonts.notoSans(fontSize: buttonSize, color: buttonColor),
        ),
        SizedBox(
          height: 8,
        ),
        Icon(
          buttonIcon,
          color: buttonColor,
          size: buttonSize * 1.6,
        ),
      ],
    );
  }
}
