import 'package:design_system/src/widgets/message_sent_widget.dart';
import 'package:flutter/material.dart';


class SentMessageBoxWidget extends StatelessWidget {
  final String hours;
  final List messages;
  const SentMessageBoxWidget({
    super.key,
    required this.hours,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              hours,
              style: textStyle.overline,
            ),
            SizedBox(height: screenSize * 0.032),
            ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    MessageSentWidget(message: messages[index]),
                    if (index < messages.length - 1)
                      SizedBox(height: screenSize * 0.021)
                  ],
                );
              },
            ),
          ],
        ),
        SizedBox(
          width: screenSize * 0.064,
        ),
      ],
    );
  }
}
