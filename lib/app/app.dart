import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/router/pages.dart';
import '../config/themes/themes.dart';

class CompanyxApp extends StatelessWidget {
  const CompanyxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateRoute: Pages.onGenerateRoute,
      title: 'CompanyX',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
