import 'package:chatgpt/constants/constants.dart';
import 'package:chatgpt/services/assets_manager.dart';
import 'package:chatgpt/widgets/text_wudget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  chatIndex == 0
                      ? AssetsManager.userImage
                      : AssetsManager.botImage,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: TextWidget(label: msg),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
