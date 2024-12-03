import 'package:flutter/material.dart';

import '../../core/utils/app_sizes.dart';
import '../strings/app_strings.dart';
import 'color_palettes.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        fontFamily: AppStrings.primaryFontFamily,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primaryColor,
          secondary: AppColors.secondaryColor,
          surface: AppColors.rose100,
          background: AppColors.rose50,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
          foregroundColor: AppColors.blackColor,
          toolbarHeight: AppSizes.s80,
          titleTextStyle: TextStyle(
            color: AppColors.blackColor,
            fontFamily: AppStrings.primaryFontFamily,
            fontSize: AppSizes.s18,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight:
                FontWeight.bold, // Consistência com um título importante
            fontSize: 32,
            height: 1.25, // Altura padrão para headlineLarge
            color: AppColors.textColor, // Mantendo cor personalizada
          ),
          headlineMedium: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 28,
            height: 1.29, // Altura padrão para headlineMedium
            color: AppColors.textColor,
          ),
          headlineSmall: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 24, // Ajuste para refletir padrão do Material Design 3
            height: 1.33, // Altura padrão para headlineSmall
            color: AppColors.textColor,
          ),
          titleLarge: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            height: 1.27, // Altura padrão para titleLarge
            color: AppColors.textColor,
          ),
          titleMedium: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 1.5,
            color: AppColors.textColor,
          ),
          titleSmall: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight
                .bold, // Médio (500) para subtítulos ou seções menores
            fontSize: 14,
            height: 1.43, // Altura padrão para titleSmall
            color: AppColors.textColor,
          ),
          bodyLarge: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight:
                FontWeight.normal, // Normal é 400, padrão para bodyLarge
            fontSize: 16, // Ajuste para refletir padrão do M3
            height: 1.5, // Altura padrão para bodyLarge
            color: AppColors.textColor,
          ),
          bodyMedium: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.normal, // Normal é 400 para bodyMedium
            fontSize: 14,
            height: 1.43, // Altura padrão para bodyMedium
            color: AppColors.textColor,
          ),
          bodySmall: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.w300, // Mantido como mais leve
            fontSize: 12,
            height: 1.33, // Altura padrão para bodySmall
            color: AppColors.textColor,
          ),
          labelLarge: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.w500, // Médio (500) para labels importantes
            fontSize: 14,
            height: 1.43,
            color: AppColors.textColor,
          ),
          labelMedium: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.w500, // Médio (500) para labels
            fontSize: 12,
            height: 1.5,
            color: AppColors.textColor,
          ),
          labelSmall: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight:
                FontWeight.w500, // Médio (500) padrão para labels menores
            fontSize: 11,
            height: 1.45,
            color: AppColors.textColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.greyColor,
            ), // Borda preta fosca
            borderRadius: BorderRadius.circular(5),
          ),
          filled: true,
          fillColor: AppColors.whiteColor,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: .5,
              color: AppColors.greyColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
              width: .5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.greyColor,
              width: .5,
            ), // Borda preta fosca
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.greyColor,
              width: .5,
            ), // Borda preta fosca
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIconColor: AppColors.secondaryColor,
          suffixIconColor: AppColors.secondaryColor,
          hintStyle: const TextStyle(
              fontSize: 12, color: Color.fromARGB(255, 151, 151, 151)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                const WidgetStatePropertyAll(AppColors.primaryColor),
            foregroundColor: const WidgetStatePropertyAll(AppColors.whiteColor),
            minimumSize: const WidgetStatePropertyAll(
              Size(double.maxFinite, 50),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(
              const TextStyle(
                fontSize: 16.0,
                fontFamily: AppStrings.primaryFontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            minimumSize: const WidgetStatePropertyAll(
                Size(double.infinity, AppSizes.s50)),
            foregroundColor:
                const WidgetStatePropertyAll(AppColors.primaryColor),
            side: WidgetStateProperty.all(
              const BorderSide(
                color: AppColors.primaryColor, // Cor da borda
                width: .5, // Largura da borda
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(
              const TextStyle(
                fontSize: 16.0,
                fontFamily: AppStrings.primaryFontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
  static ThemeData get darkTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primaryColor,
          secondary: AppColors.secondaryColor,
          surface: AppColors.rose100,
          background: Color(0xFF121212),
        ),
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: AppColors.textColor,
          ),
          bodyLarge: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: AppColors.textColor,
          ),
          bodyMedium: TextStyle(
            fontFamily: AppStrings.primaryFontFamily,
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: AppColors.textColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          enabledBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.shadowColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            // borderSide:
            //     BorderSide(color: AppColors.primaryColor.withOpacity(.3)),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIconColor: AppColors.secondaryColor,
          suffixIconColor: AppColors.secondaryColor,
          hintStyle: const TextStyle(fontSize: 14),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                const WidgetStatePropertyAll(AppColors.primaryColor),
            foregroundColor: const WidgetStatePropertyAll(AppColors.whiteColor),
            minimumSize: const WidgetStatePropertyAll(
              Size(double.maxFinite, 50),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(5), // Define o raio da borda aqui
              ),
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(
              const TextStyle(
                fontSize: 16.0,
                fontFamily: AppStrings.primaryFontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            minimumSize: const WidgetStatePropertyAll(
                Size(double.infinity, AppSizes.s50)),
            foregroundColor:
                const WidgetStatePropertyAll(AppColors.primaryColor),
            side: WidgetStateProperty.all(
              const BorderSide(
                color: AppColors.primaryColor, // Cor da borda
                width: AppSizes.s1_5, // Largura da borda
              ),
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor:
              AppColors.blackColor, // Fundo do BottomNavigationBar preto
          selectedItemColor: AppColors.primaryColor, // Cor do ícone selecionado
          unselectedItemColor:
              AppColors.greyColor, // Cor do ícone não selecionado
          elevation: AppSizes.s2,
        ),
      );
}
