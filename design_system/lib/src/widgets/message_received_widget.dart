import 'package:flutter/material.dart';

class MessageReceiveWidget extends StatelessWidget {
  final String message;
  const MessageReceiveWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;
    return Container(
      height: screenSize * 0.165,
      color: const Color.fromARGB(255, 88, 88, 88),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(screenSize * 0.042),
          bottomLeft: Radius.circular(screenSize * 0.042),
          bottomRight: Radius.circular(screenSize * 0.042),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: screenSize * 0.058),
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
          SizedBox(height: screenSize * 0.064),
        ],
      ),
    );
  }
}