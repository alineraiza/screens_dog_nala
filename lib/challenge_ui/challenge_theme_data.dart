import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:flutter/material.dart';

class ChallengeThemeData {
  static final lightTheme = ThemeData(
    backgroundColor: ChallengeColors.white,
    colorScheme: const ColorScheme.light(
      primary: ChallengeColors.white,
      secondary: ChallengeColors.red,
      surface: ChallengeColors.white,
      tertiary: ChallengeColors.grey,
      onSurface: ChallengeColors.black,
      onPrimary: ChallengeColors.deepGrey,
      onSecondary: ChallengeColors.white,
    )
  );
}