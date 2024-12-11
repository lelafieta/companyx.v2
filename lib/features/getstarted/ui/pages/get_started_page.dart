import 'package:companyx/config/router/routes.dart';
import 'package:companyx/core/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/themes/color_palette.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  AppImages.logo,
                  width: 300,
                ),
              ),
              Text(
                "Vamos Começar",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(height: 2),
              ),
              const Text("Escolha uma identidade"),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.greenDark,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      color: AppColors.neutralLighter,
                    ),
                  ],
                ),
                height: 120,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            AppImages.rh,
                            width: 100,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Gestão de RH",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const Text(
                                "Entrar como RH e fazer gestão de todos os funcionários e controla-los.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(color: AppColors.neutralLight),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.employeeRoute);
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.blueDark,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        color: AppColors.neutralLighter,
                      ),
                    ],
                  ),
                  height: 120,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Image.asset(
                            AppImages.employee,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Colaborador",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const Text(
                                  "Bem-vindo ao CompanyX pega o link de convite do admin para juntar-se a empresa.",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style:
                                      TextStyle(color: AppColors.neutralLight),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
