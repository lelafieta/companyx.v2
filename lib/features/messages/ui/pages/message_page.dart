import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/router/routes.dart';
import '../../../../config/themes/color_palette.dart';
import '../../../../core/resources/app_images.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Mensagens"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Pesquisar...",
                  border: InputBorder.none,
                  fillColor: AppColors.neutralLightest,
                  suffixIcon: Icon(Icons.search_rounded),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Conversas Recentes",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.add, color: AppColors.primary),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Nova Conversa",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              width: 250,
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
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          "Grupos",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.neutralLightest,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    horizontalTitleGap: 10,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        AppImages.user,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: Text(
                      "Lela Fieta",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: const Row(
                      children: [
                        Icon(
                          Icons.done_all,
                          size: 16,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Olá, tudo bem??"),
                      ],
                    ),
                    trailing: const Text("3:20 Manhã"),
                    onTap: () {
                      Get.toNamed(Routes.chatRoute);
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 8,
                );
              },
              itemCount: 10,
            ),
          ],
        ),
      ),
    );
  }
}
