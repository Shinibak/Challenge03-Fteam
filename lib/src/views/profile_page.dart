import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../data/todo_database.dart';
import '../models/profile_modal.dart';
import '../widgets/profile_card_widget.dart';
import '../widgets/todo_form.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _myBox = Hive.box('myBox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  void checkBoxChanged(bool? value, int index) {
    db.toDoList[index][2] = !db.toDoList[index][2];
    db.updateDataBase();
  }

  void saveNewTask(DateTime date, String Task) {
    db.toDoList.add(
      [
        Task,
        date,
        false,
      ],
    );
    db.updateDataBase();
  }

  void deletedTask(int index) {
    db.toDoList.removeAt(index);
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: cast_nullable_to_non_nullable
    final profile = ModalRoute.of(context)!.settings.arguments as ProfileModal;
    final screenSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: AnimatedBuilder(
        animation: db,
        builder: (context, child) {
          return Column(
            children: [
              ProfileCardWidget(profile: profile),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: screenSize * 0.064),
                  itemCount: db.toDoList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: screenSize * 0.026,
                        left: screenSize * 0.048,
                      ),
                      child: TodoItemWidget(
                        taskName: db.toDoList[index][0],
                        todoData: db.toDoList[index][1],
                        taskCompleted: db.toDoList[index][2],
                        screenSize: screenSize,
                        onChanged: (value) => checkBoxChanged(value, index),
                        deletedFunction: (context) => deletedTask(index),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: TodoFormList(
                onRefreshScreen: saveNewTask,
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
