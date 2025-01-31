import 'package:companyx/core/models/task_model.dart';
import 'package:companyx/core/resources/app_icons.dart';
import 'package:companyx/core/resources/app_images.dart';
import 'package:companyx/core/widgets/title_widget.dart';
import 'package:companyx/features/employee/ui/widgets/carousel_first_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../../../../config/themes/color_palette.dart';
import '../../../../core/models/action_model.dart';
import '../../../employee/ui/widgets/carousel_second_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> carouselWidgets = const [
    CarouselFirstWidget(),
    CarouselFirstWidget(),
    CarouselSecondWidget(),
  ];

  List<ActionModel> actions = [
    ActionModel(iconPath: AppIcons.calendar, name: "Dispensas"),
    ActionModel(iconPath: AppIcons.calendarClock, name: "Presenças"),
    ActionModel(iconPath: AppIcons.meeting, name: "Reuniões"),
    ActionModel(iconPath: AppIcons.handHoldingUsd, name: "Salário"),
    ActionModel(iconPath: AppIcons.rectangleList, name: "Publicações"),
    ActionModel(iconPath: AppIcons.legalCase, name: "Leis da Empresa"),
    ActionModel(iconPath: AppIcons.employees, name: "Equipe"),
    ActionModel(iconPath: AppIcons.heart, name: "Seguro Saúde"),
  ];

  List<TaskModel> createTaskList() {
    return List.generate(
      8,
      (index) {
        return TaskModel(
          id: index + 1,
          title: 'Task ${index + 1}',
          description: 'Description for task ${index + 1}',
          dueDate: DateTime.now().add(Duration(days: index + 1)),
          isCompleted: index % 2 == 0, // Alternate completed status
          assignedTo: 'User ${index % 3 + 1}', // Cycle through 3 users
          startedAt: DateTime.now().subtract(Duration(days: index + 1)),
          percent: (index + 1) * 10.0, // Example percentage
          status: index % 4, // Example status, cycle through 0-3
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 365,
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
                  height: 220,
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
                top: 130,
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TitleWidget(
                    title: "Ação Rápida",
                    seeMore: () {},
                  ),
                  GridView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 100,
                    ),
                    itemCount: actions.length,
                    itemBuilder: (context, index) {
                      final action = actions[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: AppColors.primaryLightest,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: SvgPicture.asset(
                              action.iconPath,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            action.name,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )
                        ],
                      );
                    },
                  ),
                  TitleWidget(
                    title: "Tarefas em Andamento",
                    seeMore: () {},
                  ),
                  ListView.separated(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      itemBuilder: (context, index) {
                        final task = createTaskList()[index];
                        return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2,
                                color: AppColors.neutralLight,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                margin: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                      width: 4,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          task.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Text(
                                          "Cliente: Nome do Cliente",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                color: AppColors.neutralLight,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.orange,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Text(
                                        "Pendente",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Membros",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall!
                                                .copyWith(height: 2),
                                          ),
                                          LayoutBuilder(
                                            builder: (context, constraints) {
                                              final double parentWidth =
                                                  constraints.maxWidth;
                                              final double parentHeight =
                                                  constraints.maxHeight;
                                              return Stack(
                                                children: [
                                                  const SizedBox(
                                                    width: double.infinity,
                                                    height: 30,
                                                    // color: Colors.red,
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    left: parentWidth * 0.1,
                                                    bottom: 0,
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    left: parentWidth * 0.2,
                                                    bottom: 0,
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: Colors.yellow,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    left: parentWidth * 0.3,
                                                    bottom: 0,
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            AppColors.primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          "+3",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Vencimento",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(height: 2),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            AppIcons.calendar,
                                            width: 14,
                                            color: AppColors.primary,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            "11.Dez.2024",
                                            style: TextStyle(
                                              color: AppColors.neutralLight,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: SimpleCircularProgressBar(
                                          mergeMode: true,
                                          size: 40,
                                          progressStrokeWidth: 5,
                                          backStrokeWidth: 5,
                                          valueNotifier: ValueNotifier(20),
                                          progressColors: const [
                                            AppColors.primary
                                          ],
                                          backColor: AppColors.neutralLighter,
                                          onGetText: (double value) {
                                            return Text(
                                              '${value.toInt()}%',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                    color: AppColors.primary,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Text("");
                      },
                      itemCount: createTaskList().length),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
