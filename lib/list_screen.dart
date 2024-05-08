import 'package:flutter/material.dart';
import 'package:flutter_quadrant_to_do_app/create_screen.dart';
import 'package:flutter_quadrant_to_do_app/todo.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final todos = [
    Todo(
      title: 'title 1',
      dateTime: 12312312,
    ),
    Todo(
      title: 'title 2',
      dateTime: 12312312,
    ),
    Todo(
      title: 'title 3',
      dateTime: 99999999,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        title: const Text('Todo 리스트'),
      ),
      body: ListView(
        children: todos.map((todo) => ListTile(
          title: Text(todo.title),
          subtitle: Text('${todo.dateTime}'),
        )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
