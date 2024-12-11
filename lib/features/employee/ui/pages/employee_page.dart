import 'package:companyx/core/resources/app_icons.dart';
import 'package:companyx/core/resources/app_images.dart';
import 'package:companyx/features/employee/ui/widgets/carousel_first_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/color_palette.dart';
import '../widgets/carousel_second_widget.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({super.key});

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  List<Widget> carouselWidgets = [
    CarouselFirstWidget(),
    CarouselFirstWidget(),
    CarouselSecondWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                    // color: Colors.red,
                    ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary,
                        AppColors.primaryDarker,
                      ],
                      begin: Alignment.topLeft, // Início do gradiente
                      end: Alignment.bottomRight, // Fim do gradiente
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: SafeArea(
                    child: ListTile(
                      minVerticalPadding: 20,
                      leading: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            AppImages.user,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: const Text(
                        "Lela Fieta",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Secure Flutter Developer",
                        style: TextStyle(
                          color: Colors.white.withOpacity(.6),
                        ),
                      ),
                      trailing: SizedBox(
                        width: 100,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AppIcons.newspaper,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AppIcons.bell,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 110,
                // child: Container(
                //   height: 150,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     boxShadow: [
                //       BoxShadow(
                //         spreadRadius: 2,
                //         blurRadius: 2,
                //         color: Colors.black12,
                //       ),
                //     ],
                //   ),
                //   ),
                // ),
                child: FlutterCarousel(
                  options: FlutterCarouselOptions(
                    height: 230.0,
                    showIndicator: true,
                    initialPage: 0,
                    viewportFraction: 1,
                    indicatorMargin: 5,
                    floatingIndicator: false,
                    slideIndicator: CircularSlideIndicator(
                      slideIndicatorOptions: const SlideIndicatorOptions(
                        indicatorBackgroundColor: AppColors.primaryLighter,
                        currentIndicatorColor: AppColors.primary,
                      ),
                    ),
                  ),
                  items: [1, 2].map((i) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 10, bottom: 5),
                      child: Builder(
                        builder: (BuildContext context) {
                          return carouselWidgets.elementAt(i);
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
