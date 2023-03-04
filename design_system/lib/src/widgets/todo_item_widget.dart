import 'package:flutter/material.dart';
import '../themes/theme_extensions.dart';
import 'check_box_widget.dart';

class TodoListWidget extends StatefulWidget {
  final String todoItem;
  final String todoData;
  const TodoListWidget(
      {super.key, required this.todoItem, required this.todoData});

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final textStyle = Theme.of(context).textTheme;
    final theme = Theme.of(context).extension<ThemeCustom>()!;
    return Padding(
      padding: EdgeInsets.only(bottom: screenSize * 0.0213),
      child: Container(
        height: screenSize * 0.170,
        width: screenSize * 0.901,
        decoration: BoxDecoration(
          color: check ? theme.todoColorOn : theme.todoColorOff,
          borderRadius: BorderRadius.circular(screenSize * 0.048),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    check = !check;
                  },
                );
              },
              child: CheckBoxWidget(wasCheck: check),
            ),
            SizedBox(width: screenSize * 0.037),
            Column(
              children: [
                Text(
                  widget.todoItem,
                  style: textStyle.bodyText2,
                ),
                SizedBox(height: screenSize * 0.026),
                Text(
                  widget.todoData,
                  style: textStyle.overline,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
