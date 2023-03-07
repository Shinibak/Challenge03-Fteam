import 'package:design_system/src/widgets/message_sent_widget.dart';
import 'package:flutter/material.dart';

class SentMessageWidget extends StatelessWidget {
  final String hours;
  final List messages;
  const SentMessageWidget({
    super.key,
    required this.hours,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          hours,
          style: textStyle.overline,
        ),
        SizedBox(height: screenSize * 0.032),
        SizedBox(
          height: messages.length * (screenSize * 0.186),
          width: screenSize,
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: screenSize * 0.021,
                ),
                child: MessageSentWidget(message: messages[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
