import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// This provider manages the logged-in state (true if logged in, false if not)
final loggedInProvider = StateProvider<bool>((ref) => false);


const Color darkBlue = Color(0xFF14121D);
const Color lightGreen = Color(0xFFC5FF20);

final BoxDecoration primaryContainerStyle = BoxDecoration(
  border: Border.all(
    color: darkBlue,
    width: 2
  ),
  borderRadius: BorderRadius.circular(25)
);

final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: lightGreen,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2),
  ),
  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
  textStyle: GoogleFonts.tsukimiRounded(
      color: Colors.black,
      fontWeight: FontWeight.bold
  )
);


final TextStyle primaryTextStyle = GoogleFonts.tsukimiRounded(
  color: Colors.white,
  fontWeight: FontWeight.w500
);

final TextStyle primaryButtonTextStyle = GoogleFonts.tsukimiRounded(
    color: Colors.black,
    fontWeight: FontWeight.bold
);
