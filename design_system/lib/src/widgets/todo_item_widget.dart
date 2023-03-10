import 'package:flutter/material.dart';
import '../themes/theme_extensions.dart';
import 'check_box_widget.dart';

class TodoListWidget extends StatefulWidget {
  final String todoItem;
  final String todoData;
  final double screenSize;
  const TodoListWidget(
      {super.key, required this.todoItem, required this.todoData, required this.screenSize});

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final theme = Theme.of(context).extension<ThemeCustom>()!;
    return Padding(
      padding: EdgeInsets.only(bottom: widget.screenSize * 0.0213),
      child: Container(
        height: widget.screenSize * 0.170,
        width: widget.screenSize * 0.901,
        decoration: BoxDecoration(
          color: check ? theme.todoColorOn : theme.todoColorOff,
          borderRadius: BorderRadius.circular(widget.screenSize * 0.048),
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
              child: CheckBoxWidget(wasCheck: check,screenSize: widget.screenSize),
            ),
            SizedBox(width: widget.screenSize * 0.037),
            Column(
              children: [
                Text(
                  widget.todoItem,
                  style: textStyle.bodyText2,
                ),
                SizedBox(height: widget.screenSize * 0.026),
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
