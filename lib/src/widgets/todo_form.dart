import 'package:flutter/material.dart';

class TodoFormList extends StatefulWidget {
  const TodoFormList({super.key});

  @override
  State<TodoFormList> createState() => _TodoFormListState();
}

class _TodoFormListState extends State<TodoFormList> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController taskController = TextEditingController();
  // DateTime dateTime = DateTime(2023, 12, 23, 5, 45);
  late DateTime dateTime;
  late final dateReservado;

  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
    dateReservado = dateTime;
  }

  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');

    return Container(
      height: 200,
      color: Colors.amber,
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: taskController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                      '${dateTime.year}/${dateTime.month}/${dateTime.day}',
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
                    child: Text('$hours:$minutes'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: dateReservado,
        lastDate: DateTime(3000),
      );

  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay(
          hour: dateTime.hour,
          minute: dateTime.minute,
        ),
      );
}
