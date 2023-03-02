import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../mockup/filters_data.dart';

class ListFilterButtonWidget extends StatelessWidget {
  const ListFilterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final filters = filtersDataList;
    return SizedBox(
      height: screenSize * 0.117,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (BuildContext context, int index) {
          return FilterButtonWidget(
              text: filters.text[index],
              icon: filters.icon[index],
              notifications: filters.notifications[index]);
        },
      ),
    );
  }
}
