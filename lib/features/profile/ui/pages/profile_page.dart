import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/color_palette.dart';
import '../../../../core/resources/app_icons.dart';
import '../../../../core/resources/app_images.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      padding: const EdgeInsets.only(
                        top: 60,
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.neutralLightest,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Lela Fieta",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.primary,
                                ),
                          ),
                          const Text("Secure Flutter Developer"),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppIcons.marker,
                                      width: 14,
                                      color: AppColors.primary,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Luanda, Morro Bento",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 2,
                                  height: 20,
                                  color: AppColors.primaryLighter,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppIcons.briefcase,
                                      width: 14,
                                      color: AppColors.primary,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Tarefas Completas",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                            border:
                                Border.all(width: 2, color: AppColors.primary),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(AppImages.user),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    AppIcons.user,
                    color: AppColors.primary,
                  ),
                ),
                title: Text("Perfil Info"),
              ),
              ListTile(
                leading: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    AppIcons.stats,
                    color: AppColors.primary,
                  ),
                ),
                title: Text("Estatística"),
              ),
              ListTile(
                leading: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    AppIcons.settings,
                    color: AppColors.primary,
                  ),
                ),
                title: Text("Configurações"),
              ),
              ListTile(
                leading: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    AppIcons.info,
                    color: AppColors.primary,
                  ),
                ),
                title: Text("Sobre"),
              ),
              ListTile(
                leading: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    AppIcons.exit,
                    color: AppColors.primary,
                  ),
                ),
                title: Text("Sair"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
