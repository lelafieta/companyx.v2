import 'package:companyx/config/themes/color_palette.dart';
import 'package:companyx/core/resources/app_images.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../../core/resources/app_icons.dart';

class CarouselSecondWidget extends StatefulWidget {
  const CarouselSecondWidget({super.key});

  @override
  State<CarouselSecondWidget> createState() => _CarouselSecondWidgetState();
}

class _CarouselSecondWidgetState extends State<CarouselSecondWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 2,
            color: Colors.black12,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        AppImages.cloudyDay,
                        width: 80,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.marker,
                              width: 16,
                              color: AppColors.neutralLight,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Luanda, Morro Bento",
                              style: TextStyle(
                                color: AppColors.neutralLight,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ceu Nublado",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      Text(
                        "52ºC",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      InkWell(
                        onTap: () {
                          context.pushTransparentRoute(SecondPage());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: AppColors.primaryLightest,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "PREVISÃO",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: AppColors.neutralLighter,
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.primaryLightest,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppIcons.humidity,
                            width: 20,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      const Text(
                        "Humidade",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: AppColors.neutralLight,
                        ),
                      ),
                      const Text(
                        "65%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.primaryLightest,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppIcons.snowBlowing,
                            width: 20,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      const Text(
                        "Velocidade vento",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: AppColors.neutralLight,
                        ),
                      ),
                      const Text(
                        "5 km/h",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.primaryLightest,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppIcons.umbrella,
                            width: 20,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      const Text(
                        "Precipitação",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: AppColors.neutralLight,
                        ),
                      ),
                      const Text(
                        "40%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () {
        Navigator.of(context).pop();
      },
      // Note that scrollable widget inside DismissiblePage might limit the functionality
      // If scroll direction matches DismissiblePage direction
      direction: DismissiblePageDismissDirection.multi,
      isFullScreen: false,
      child: Scaffold(body: Container()),
    );
  }
}
