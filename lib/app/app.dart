import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/router/pages.dart';
import '../config/themes/themes.dart';

class AputaroApp extends StatelessWidget {
  const AputaroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateRoute: Pages.onGenerateRoute,
      title: 'Aputaro',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
