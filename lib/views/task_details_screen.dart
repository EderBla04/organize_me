import 'package:flutter/material.dart';
import 'package:organize_me/views/home_screen.dart';
import 'package:organize_me/views/new_task_screen.dart';

class TaskDetailsScreen extends StatefulWidget {
  // TODO: Agregar parámetro para recibir el ID o datos del proyecto
  const TaskDetailsScreen({super.key});

  @override
  State<TaskDetailsScreen> createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  // TODO: Agregar variables de estado
  // - Lista de tareas
  // - Estado del proyecto
  // - Progreso total

  @override
  void initState() {
    super.initState();
    // TODO: Cargar datos del proyecto
    // - Obtener tareas
    // - Calcular progreso
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Daily Tasks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              //opciones para las tareas
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project: Holidays in Norway',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'March 1 - March 15, 2024',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20),
                Text('Progress', style: TextStyle(fontSize: 16)),
                LinearProgressIndicator(
                  value: 0.3,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
                SizedBox(height: 8),
                Text('3 of 10 tasks completed'),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                ListTile(
                  leading: Checkbox(
                    value: false,
                    onChanged: null,
                  ),
                  title: Text('Book flights'),
                  subtitle: Text('Due: March 5'),
                ),
                ListTile(
                  leading: Checkbox(
                    value: true,
                    onChanged: null,
                  ),
                  title: Text('Research hotels'),
                  subtitle: Text('Completed'),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Pasar datos del proyecto actual a NewTaskScreen
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
