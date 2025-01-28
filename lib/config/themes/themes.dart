import 'package:companyx/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';

import '../strings/app_strings.dart';
import 'color_palette.dart';

class AppThemes {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    fontFamily: AppStrings.primaryFontFamily,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    // shadowColor: AppColors.neutralMedium,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.primaryDarker,
      surface: Colors.white,
      background: AppColors.primaryLighter,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      toolbarHeight: AppSizes.s80,
      titleTextStyle: TextStyle(
          fontFamily: AppStrings.primaryFontFamily,
          fontSize: AppSizes.s18,
          fontWeight: FontWeight.bold,
          color: AppColors.neutralDark),
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.bold, // Consistência com um título importante
        fontSize: 32,
        height: 1.25, // Altura padrão para headlineLarge
      ),
      headlineMedium: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 28,
        height: 1.29, // Altura padrão para headlineMedium
        color: AppColors.neutralDark,
      ),
      headlineSmall: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 24, // Ajuste para refletir padrão do Material Design 3
        height: 1.33, // Altura padrão para headlineSmall
        color: AppColors.neutralDark,
      ),
      titleLarge: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 18,
        height: 1.27, // Altura padrão para titleLarge
        color: AppColors.neutralDark,
      ),
      titleMedium: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
        color: AppColors.neutralDark,
      ),
      titleSmall: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight:
            FontWeight.bold, // Médio (500) para subtítulos ou seções menores
        fontSize: 14,
        height: 1.43, // Altura padrão para titleSmall
        color: AppColors.neutralDark,
      ),
      bodyLarge: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        // fontWeight: FontWeight.bold,
        fontSize: 16,
        height: 1.5,
        color: AppColors.neutralDark,
      ),
      bodyMedium: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.normal, // Normal é 400 para bodyMedium
        fontSize: 14,
        height: 1.43, // Altura padrão para bodyMedium
        color: AppColors.neutralDark,
      ),
      bodySmall: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.w300, // Mantido como mais leve
        fontSize: 12,
        height: 1.33, // Altura padrão para bodySmall
        color: AppColors.neutralDark,
      ),
      labelLarge: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.w500, // Médio (500) para labels importantes
        fontSize: 14,
        height: 1.43,
        color: AppColors.neutralDark,
      ),
      labelMedium: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.w500, // Médio (500) para labels
        fontSize: 12,
        height: 1.5,
        color: AppColors.neutralDark,
      ),
      labelSmall: TextStyle(
        fontFamily: AppStrings.primaryFontFamily,
        fontWeight: FontWeight.w500, // Médio (500) padrão para labels menores
        fontSize: 11,
        height: 1.45,
        color: AppColors.neutralDark,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        // borderSide: const BorderSide(
        //     // color: AppColors.neutralMedium,
        //     ), // Borda preta fosca
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: .5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          // color: AppColors.neutralMedium,
          width: .5,
        ), // Borda preta fosca
        borderRadius: BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          // color: AppColors.neutralMedium,
          width: .5,
        ), // Borda preta fosca
        borderRadius: BorderRadius.circular(10),
      ),
      prefixIconColor: AppColors.primaryLighter,
      suffixIconColor: AppColors.primaryLighter,
      hintStyle: const TextStyle(
          fontSize: 12, color: Color.fromARGB(255, 151, 151, 151)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColors.primary),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        minimumSize: const MaterialStatePropertyAll(
          Size(double.maxFinite, 50),
        ),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        textStyle: const MaterialStatePropertyAll<TextStyle>(
          TextStyle(
            fontSize: 16.0,
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        minimumSize:
            const MaterialStatePropertyAll(Size(double.infinity, AppSizes.s50)),
        foregroundColor: const MaterialStatePropertyAll(AppColors.primary),
        side: const MaterialStatePropertyAll(
          BorderSide(
            color: AppColors.primary, // Cor da borda
            width: .5, // Largura da borda
          ),
        ),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        textStyle: const MaterialStatePropertyAll<TextStyle>(
          TextStyle(
            fontSize: 16.0,
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // primary: AppColors.primaryLight,
    fontFamily: AppStrings.primaryFontFamily,
    scaffoldBackgroundColor: AppColors.neutralDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryDark,
      foregroundColor: Colors.white, // Texto no AppBar
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLight,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary, // Botão principal
        foregroundColor: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.neutralLightest,
      ),
      bodyMedium: TextStyle(
        color: AppColors.neutralLighter,
      ), // Texto secundário
    ),
    inputDecorationTheme: const InputDecorationTheme(
      // fillColor: AppColors.neutralMedium,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.neutralLight),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryLight),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryLight,
      secondary: AppColors.blueLight,
      error: AppColors.redLight,
      surface: AppColors.neutralMedium,
      background: AppColors.neutralDark,
    ),
  );
}
