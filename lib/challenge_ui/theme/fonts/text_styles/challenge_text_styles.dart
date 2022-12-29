import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//TODO: TextTheme3
class ChallengeTextStyles {
  static final headlineSmall = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: ChallengeColors.black,
  );
  static final titleLarge = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ChallengeColors.black,
  );
  static final titleMedium = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ChallengeColors.black,
  );
  static final titleSmall = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: ChallengeColors.grey,
  );
  static final bodyLarge = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ChallengeColors.grey,
  );
}

