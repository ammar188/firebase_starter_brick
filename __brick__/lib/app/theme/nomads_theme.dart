import 'package:flutter/material.dart';

import 'text_styles.dart';

@immutable
class NomadsColors extends ThemeExtension<NomadsColors> {
  final Color? primaryTextColor;
  final Color? secondaryTextColor;
  final Color? tertiaryTextColor;

  const NomadsColors({
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.tertiaryTextColor,
  });

  @override
  ThemeExtension<NomadsColors> copyWith({
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? tertiaryTextColor,
  }) {
    return NomadsColors(
      primaryTextColor: primaryTextColor,
      secondaryTextColor: secondaryTextColor,
      tertiaryTextColor: tertiaryTextColor,
    );
  }

  @override
  ThemeExtension<NomadsColors> lerp(
      ThemeExtension<NomadsColors>? other, double t) {
    if (other is! NomadsColors) {
      return this;
    }

    return NomadsColors(
      primaryTextColor: Color.lerp(primaryTextColor, other.primaryTextColor, t),
      secondaryTextColor:
          Color.lerp(secondaryTextColor, other.secondaryTextColor, t),
      tertiaryTextColor:
          Color.lerp(tertiaryTextColor, other.tertiaryTextColor, t),
    );
  }
}

class NomadsTheme {
  NomadsTheme._();

  static ThemeData light() {
    return ThemeData(
      fontFamily: "Roboto",
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xFFEFEFEF),
      extensions: const [
        NomadsColors(
          primaryTextColor: Color(0xFFEFEFEF),
          secondaryTextColor: Color(0xFFEFEFEF),
          tertiaryTextColor: Color(0xFFEFEFEF),
        ),
      ],
      textTheme: const TextTheme(
        bodySmall: textStyleSmall,
      ),
      drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0XFF4C76D9),
          size: 23.1,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 5.0,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Color(0xff66BA76),
        linearTrackColor: Color(0xffB6B6B5),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      fontFamily: "Roboto",
      brightness: Brightness.dark,
      extensions: const [
        NomadsColors(
          primaryTextColor: Color(0x4DEBEBF5),
          secondaryTextColor: Color(0x99EBEBF5),
          tertiaryTextColor: Color(0x4DEBEBF5),
        )
      ],
    );
  }
}
