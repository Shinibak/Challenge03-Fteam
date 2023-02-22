import 'package:design_system/src/models/filter_modal.dart';
import 'package:design_system/src/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class FilterButtonWidget extends StatefulWidget {
  final FilterModal filterList;
  const FilterButtonWidget({super.key, required this.filterList});

  @override
  State<FilterButtonWidget> createState() => _FilterButtonWidgetState();
}

class _FilterButtonWidgetState extends State<FilterButtonWidget> {
  bool wasPressed = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Container(
      height: screenSize * 0.117,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenSize * 0.04),
        color: wasPressed ? Colors.yellow : Colors.transparent,
      ),
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              wasPressed = !wasPressed;
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenSize * 0.053,
            ),
            Image.asset(
              widget.filterList.icon,
              height: screenSize * 0.058,
              width: screenSize * 0.058,
            ),
            SizedBox(
              width: screenSize * 0.032,
            ),
            Text(
              widget.filterList.text,
            ),
            SizedBox(
              width: screenSize * 0.0106,
            ),
            NotificationWidget(
              notification: widget.filterList.notifications,
              color: wasPressed ? Colors.purple : Colors.grey,
            ),
            SizedBox(
              width: screenSize * 0.053,
            ),
          ],
        ),
      ),
    );
  }
}
