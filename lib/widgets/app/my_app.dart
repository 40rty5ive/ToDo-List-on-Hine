import 'package:flutter/material.dart';
import 'package:to_do_hive/widgets/groups/groups_widget.dart';
import 'package:to_do_hive/widgets/task_form/task_form_widget.dart';
import 'package:to_do_hive/widgets/tasks/tasks_widget.dart';

import '../group_form/group_form_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive ToDo',
      routes: {
        '/groups': (context) => const GroupsWidget(),
        '/groups/form': (context) => const GroupFormWidget(),
        '/groups/tasks': (context) => const TaskWidget(),
        '/groups/tasks/form': (context) => const TaskFormWidget(),
      },
      initialRoute: '/groups',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
