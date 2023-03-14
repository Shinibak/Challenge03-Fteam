import 'package:flutter/material.dart';

import '../themes/colors.dart';

class MessageReceiveWidget extends StatelessWidget {
  final double screenSize;
  final String message;
  const MessageReceiveWidget({
    super.key,
    required this.message,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
     final colors = MyColors();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: screenSize * 0.165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(screenSize * 0.042),
              bottomLeft: Radius.circular(screenSize * 0.042),
              bottomRight: Radius.circular(screenSize * 0.042),
            ),
            color: colors.receivedMsg,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(width: screenSize * 0.048),
                  Text(
                    message,
                    style: textStyle.button,
                  ),
                  SizedBox(width: screenSize * 0.048),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
