import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:companyx/core/resources/app_icons.dart';
import 'package:companyx/features/home/ui/pages/home_page.dart';
import 'package:companyx/features/messages/ui/pages/message_page.dart';
import 'package:companyx/features/profile/ui/pages/profile_page.dart';
import 'package:companyx/features/tasks/ui/pages/task_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/color_palette.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({super.key});

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  final List<Widget> pages = [
    HomePage(),
    MessagePage(),
    TaskPage(),
    ProfilePage(),
  ];

  int _currentIndex = 0;

  List<Map<String, dynamic>> iconList = [
    {"icon": AppIcons.houseChimneyWindow, "label": "Home"},
    {"icon": AppIcons.comments, "label": "Mensagens"},
    {"icon": AppIcons.clipboardListCheck, "label": "Tarefas"},
    {"icon": AppIcons.user, "label": "Perfil"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        backgroundColor: AppColors.primary,
        tabBuilder: (int index, bool isActive) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconList[index]["icon"],
                width: 24,
                color: isActive ? Colors.white : Colors.white60,
              ),
              Text(
                iconList[index]["label"],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.white60,
                ),
              )
            ],
          );
        },
        activeIndex: _currentIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 16,
        rightCornerRadius: 16,
        onTap: (index) => setState(() => _currentIndex = index),
        //other params
      ),
    );
  }
}
