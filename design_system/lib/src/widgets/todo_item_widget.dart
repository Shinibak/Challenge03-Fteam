import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../themes/colors.dart';
import '../themes/theme_extensions.dart';

class TodoItemWidget extends StatelessWidget {
  final String taskName;
  final DateTime todoData;
  final double screenSize;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deletedFunction;

  TodoItemWidget({
    super.key,
    required this.taskName,
    required this.todoData,
    required this.screenSize,
    required this.taskCompleted,
    required this.onChanged,
    required this.deletedFunction,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final theme = Theme.of(context).extension<ThemeCustom>()!;
    final colors = MyColors();
    late final String period;
    if (todoData.hour > 12) {
      period = 'PM';
    } else {
      period = 'AM';
    }

    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: deletedFunction,
            icon: Icons.delete,
            backgroundColor: colors.deleted,
          ),
        ],
      ),
      child: Container(
        height: screenSize * 0.170,
        width: screenSize * 0.901,
        decoration: BoxDecoration(
          color: taskCompleted ? theme.todoColorOn : theme.todoColorOff,
          borderRadius: BorderRadius.circular(screenSize * 0.048),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: screenSize * 0.032),
          child: Row(
            children: [
              SizedBox(width: screenSize * 0.032),
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: theme.buttonColorOn,
                
              ),
              SizedBox(width: screenSize * 0.037),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taskName,
                    style: textStyle.bodyText2,
                  ),
                  SizedBox(height: screenSize * 0.026),
                  Text(
                    '${todoData.day}/${todoData.month}/${todoData.year} ${todoData.hour}:${todoData.minute} $period',
                    style: textStyle.overline,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
