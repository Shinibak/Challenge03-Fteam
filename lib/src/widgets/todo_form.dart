// ignore_for_file: must_be_immutable
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TodoFormList extends StatefulWidget {
  Function(DateTime, String)? onRefreshScreen;

  TodoFormList({
    super.key,
    required this.onRefreshScreen,
  });

  @override
  State<TodoFormList> createState() => _TodoFormListState();
}

class _TodoFormListState extends State<TodoFormList> {
  final taskController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final colors = MyColors();
  late DateTime dateTime;
  late final dateReserved;
  bool validate = true;

  @override
  void initState() {
    dateTime = DateTime.now();
    dateReserved = dateTime;

    super.initState();
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: dateReserved,
        lastDate: DateTime(3000),
      );

  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay(
          hour: dateTime.hour,
          minute: dateTime.minute,
        ),
      );

  bool? validatorData() {
    final valiDate = DateTime.now();
    if (dateTime.year == valiDate.year &&
        dateTime.month == valiDate.month &&
        dateTime.day == valiDate.day) {
      if (dateTime.hour <= valiDate.hour) {
        if (dateTime.minute <= valiDate.minute) {
          setState(() {
            validate = false;
          });
          return false;
        } else {
          return true;
        }
      } else {
        return true;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');

    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: taskController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final time = await pickTime();

                          if (time == null) return;

                          final newDateTime = DateTime(
                            dateTime.year,
                            dateTime.month,
                            dateTime.day,
                            time.hour,
                            time.minute,
                          );
                          setState(() => dateTime = newDateTime);
                        },
                        child: Text(
                          '$hours:$minutes',
                          style: TextStyle(
                            color: validate
                                ? colors.profileButton
                                : colors.deleted,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final date = await pickDate();
                          if (date == null) return;

                          final newDateTime = DateTime(
                            date.year,
                            date.month,
                            date.day,
                            dateTime.hour,
                            dateTime.minute,
                          );

                          setState(() => dateTime = newDateTime);
                        },
                        child: Text(
                          '${dateTime.day}/${dateTime.month}/${dateTime.year}',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate() == true &&
                              validatorData() == true) {
                            widget.onRefreshScreen!(
                              dateTime,
                              taskController.text,
                            );
                            Navigator.pop(context);
                          } else if (validatorData() == false) {}
                        },
                        child: const Text('Save'),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
