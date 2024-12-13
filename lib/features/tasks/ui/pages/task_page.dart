import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../../../../config/themes/color_palette.dart';
import '../../../../core/models/task_model.dart';
import '../../../../core/resources/app_icons.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
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
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text("Tarefas"),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.angleSmallLeft,
            width: 30,
            color: AppColors.neutralDark,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.settingsSliders,
              width: 22,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.primaryLightest,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Conversas",
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Colors.white,
                                ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Pendente",
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Em Progresso",
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Terminado",
                        style: Theme.of(context).textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(16),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    task.title,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                      BorderRadius.circular(50),
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
                                                      BorderRadius.circular(50),
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
                                                      BorderRadius.circular(50),
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
                                                  color: AppColors.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Vencimento",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(height: 2),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                  padding: const EdgeInsets.only(right: 10),
                                  child: SimpleCircularProgressBar(
                                    mergeMode: true,
                                    size: 40,
                                    progressStrokeWidth: 5,
                                    backStrokeWidth: 5,
                                    valueNotifier: ValueNotifier(20),
                                    progressColors: const [AppColors.primary],
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
          )
        ],
      ),
    );
  }
}
