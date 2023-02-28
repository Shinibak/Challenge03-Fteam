import 'package:flutter/material.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Container(
      height: screenSize * 0.282,
      width: screenSize,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(screenSize * 0.101),
      ),
      child: Column(
        children: [
          SizedBox(height: screenSize * 0.048),
          Row(
            children: [
              SizedBox(width: screenSize * 0.074),
              //listView.Builder

              SizedBox(width: screenSize * 0.074),
            ],
          ),
          SizedBox(height: screenSize * 0.096),
        ],
      ),
    );
  }
}
