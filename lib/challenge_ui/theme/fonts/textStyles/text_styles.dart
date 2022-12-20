import 'package:challenge_2/challenge_ui/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final headline5 = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: ChallengeColors.onSurface,
  );
  static final headline6 = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ChallengeColors.onSurface,
  );
  static final subtitle1 = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ChallengeColors.onSurface,
  );
  static final subtitle2 = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: ChallengeColors.tertiary,
  );
  static final caption = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ChallengeColors.tertiary,
  );
}

