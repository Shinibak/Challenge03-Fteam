import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ListFilterButtonWidget extends StatelessWidget {
  final List filterList;
  const ListFilterButtonWidget({super.key, required this.filterList});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: filterList.length,
      itemBuilder: (BuildContext context, int index) {
        return FilterButtonWidget(
          text: filterList[index].text,
          icon: filterList[index].icon,
          notifications: filterList[index].notifications,
          active: filterList[index].active,
          screenSize: screenSize,
        );
      },
    );
  }
}
