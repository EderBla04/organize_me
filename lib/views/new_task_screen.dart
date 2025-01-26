import 'package:flutter/material.dart';

class NewTaskScreen extends StatefulWidget {
  // TODO: Agregar parámetro para recibir datos del proyecto padre
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  // TODO: Agregar variables de estado y controladores
  // - Controlador para título
  // - Controlador para notas
  // - Variable para fecha límite
  // - Variable para prioridad

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('New Task', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Task to: Holidays in Norway',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              // TODO: Agregar controlador para título
              decoration: InputDecoration(
                labelText: 'Task Title',
                border: OutlineInputBorder(), // Agregar coma aquí
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Due Date'),
              subtitle: Text('Must be before March 15, 2024'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Implementar selección de fecha
                // - Validar que esté dentro del rango del proyecto
              },
            ),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text('Priority'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Medium'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            TextField(
              maxLines: 3,
              // TODO: Agregar controlador para notas
              decoration: InputDecoration(
                labelText: 'Notes',
                border: OutlineInputBorder(), // Agregar coma aquí
              ),
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implementar lógica de creación de tarea
                  // - Validar campos requeridos
                  // - Crear objeto de tarea
                  // - Agregar al proyecto padre
                  // - Navegar de vuelta
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text('Add Task'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
