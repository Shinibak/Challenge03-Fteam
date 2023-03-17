import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../datasource/todo_database.dart';
import '../models/profile_model.dart';
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
    super.initState();
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: cast_nullable_to_non_nullable
    final profile = ModalRoute.of(context)!.settings.arguments as ProfileModel;
    final screenSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: AnimatedBuilder(
        animation: db,
        builder: (context, child) {
          return Column(
            children: [
              ProfileCardWidget(
                avatarImage: profile.avatarImage,
                name: profile.name,
                isOnline: profile.isOnline,
                number: profile.number,
                status: profile.status,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: screenSize * 0.064),
                  itemCount: db.returnToDoList().length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: screenSize * 0.026,
                        left: screenSize * 0.048,
                      ),
                      child: TodoItemWidget(
                        taskName: db.returnToDoList()[index].taskTodo,
                        date: db.returnToDoList()[index].dateTodo,
                        taskCompleted: db.returnToDoList()[index].isCompleted,
                        screenSize: screenSize,
                        onChanged: (value) => db.checkBoxChanged(value, index),
                        deletedFunction: (context) => db.deletedTask(index),
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
                onRefreshScreen: db.saveNewTask,
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
