import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController {
  static TextTheme _buildTextTheme(TextTheme baseTheme) {
    return baseTheme.merge(
        TextTheme(
          displayLarge: TextStyle(fontSize: baseTheme.displayLarge!.fontSize,fontWeight: FontWeight.w500),
          displayMedium: TextStyle(fontSize: baseTheme.displayMedium!.fontSize, fontWeight: FontWeight.w500),
          displaySmall: TextStyle(fontSize: baseTheme.displaySmall!.fontSize, fontWeight: FontWeight.w500),

          headlineLarge: TextStyle(fontSize: baseTheme.headlineLarge!.fontSize, fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(fontSize: baseTheme.headlineMedium!.fontSize, fontWeight: FontWeight.w700),
          headlineSmall: TextStyle(fontSize: baseTheme.headlineSmall!.fontSize, fontWeight: FontWeight.w700),

          titleLarge: TextStyle(fontSize: baseTheme.titleLarge!.fontSize, fontWeight: FontWeight.w500),
          titleMedium: TextStyle(fontSize: baseTheme.titleMedium!.fontSize, fontWeight: FontWeight.w500),
          titleSmall: TextStyle(fontSize: baseTheme.titleSmall!.fontSize, fontWeight: FontWeight.w500),

          bodyLarge: TextStyle(fontSize: baseTheme.bodyLarge!.fontSize),
          bodyMedium: TextStyle(fontSize: baseTheme.bodyMedium!.fontSize),
          bodySmall: TextStyle(fontSize: baseTheme.bodySmall!.fontSize),

          labelLarge: TextStyle(fontSize: baseTheme.labelLarge!.fontSize, fontWeight: FontWeight.w500),
          labelMedium: TextStyle(fontSize: baseTheme.labelMedium!.fontSize, fontWeight: FontWeight.w500),
          labelSmall: TextStyle(fontSize: baseTheme.labelSmall!.fontSize, fontWeight: FontWeight.w500),
        )
    );
  }

  static ThemeData buildTheme(Brightness brightness) {
    NavigationBarThemeData nt = NavigationBarThemeData(
      labelTextStyle: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        TextStyle style = const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11
        );
        if (states.contains(WidgetState.selected)) {
          style = style.merge(const TextStyle(fontWeight: FontWeight.w600));
        }
        return style;
      }),
    );
    ThemeData baseTheme = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorSchemeSeed: Colors.green,
      navigationBarTheme: nt,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.golosTextTextTheme(
          _buildTextTheme(
              baseTheme.textTheme
          )
      ),
    );
    return baseTheme.copyWith(
      textTheme: GoogleFonts.leagueSpartanTextTheme(
          _buildTextTheme(
              baseTheme.textTheme
          )
      ),
    );
  }


}