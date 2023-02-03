import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:challenge_2/challenge_ui/theme/fonts/text_styles/challenge_text_styles.dart';
import 'package:flutter/material.dart';

class ChallengeThemeData {
  static final _base = ThemeData.light();
  static final lightTheme = _base.copyWith(
    backgroundColor: ChallengeColors.white,
    primaryColor: ChallengeColors.white,
    colorScheme: _base.colorScheme.copyWith(
      primary: ChallengeColors.white,
      secondary: ChallengeColors.red,
      surface: ChallengeColors.white,
      tertiary: ChallengeColors.grey,
      onTertiary: ChallengeColors.darkGrey,
      onSurface: ChallengeColors.black,
      onPrimary: ChallengeColors.deepGrey,
      onSecondary: ChallengeColors.white,
    ),
    textTheme: TextTheme(
      headlineLarge: ChallengeTextStyles.headlineLarge,
      headlineSmall: ChallengeTextStyles.headlineSmall,
      titleLarge: ChallengeTextStyles.titleLarge,
      titleMedium: ChallengeTextStyles.titleMedium,
      titleSmall: ChallengeTextStyles.titleSmall,
      bodyLarge: ChallengeTextStyles.bodyLarge,
      bodyMedium: ChallengeTextStyles.bodyMedium,
    ),
  );
}
