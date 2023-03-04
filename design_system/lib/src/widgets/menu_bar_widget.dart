import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MenuBarWidget extends StatelessWidget {
  final List menuList;
  const MenuBarWidget({super.key, required this.menuList});

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
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                itemCount: menuList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                     MenuButtonWidget(icon: menuList[index].icon,
                     active: menuList[index].active),
                      if (index < menuList.length - 1)
                        SizedBox(height: screenSize * 0.021)
                    ],
                  );
                },
              ),
              SizedBox(width: screenSize * 0.074),
            ],
          ),
          SizedBox(height: screenSize * 0.096),
        ],
      ),
    );
  }
}
