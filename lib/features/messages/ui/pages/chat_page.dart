import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/themes/color_palette.dart';
import '../../../../core/resources/app_icons.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text("Lela Fieta"),
        centerTitle: false,
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
              AppIcons.phoneFlip,
              width: 22,
              color: AppColors.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.videoCameraAlt,
              color: AppColors.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.info,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                BubbleSpecialThree(
                  text: 'Added iMessage shape bubbles',
                  color: Color(0xFF1B97F3),
                  tail: false,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                BubbleSpecialThree(
                  text: 'Please try and give some feedback on it!',
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                BubbleSpecialThree(
                  text: 'Sure',
                  color: Color(0xFFE8E8EE),
                  tail: false,
                  isSender: false,
                ),
                BubbleSpecialThree(
                  text: "I tried. It's awesome!!!",
                  color: Color(0xFFE8E8EE),
                  tail: false,
                  isSender: false,
                ),
                BubbleSpecialThree(
                  text: "Thanks",
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  isSender: false,
                ),
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: AppColors.primary),
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Aa",
                          constraints: BoxConstraints(maxHeight: 50),
                          contentPadding: EdgeInsets.symmetric(horizontal: 0),
                          suffixIcon: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.attach_file_outlined),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
