import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle getTitleLargeInter(BuildContext context) {
    return GoogleFonts.inter(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getTitleMediumInter(BuildContext context) {
    return GoogleFonts.inter(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getTitleSmallInter(BuildContext context) {
    return GoogleFonts.inter(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getBodyLargeInter(BuildContext context) {
    return GoogleFonts.inter(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle getBodyMediumInter(BuildContext context) {
    return GoogleFonts.inter(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle getBodySmallInter(BuildContext context) {
    return GoogleFonts.inter(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }
}
