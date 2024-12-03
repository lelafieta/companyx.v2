import 'package:flutter/material.dart';

import '../utils/app_sizes.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final VoidCallback? seeMore;
  const TitleWidget({super.key, required this.title, this.seeMore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.s15,
        vertical: AppSizes.s10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          (seeMore != null)
              ? InkWell(
                  onTap: seeMore,
                  child: const Row(
                    children: [
                      Text("Ver mais"),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: AppSizes.s12,
                      )
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
