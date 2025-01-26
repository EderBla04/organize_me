import 'package:flutter/material.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  // TODO: Agregar variables y controladores
  // - TextEditingController para título
  // - TextEditingController para descripción
  // - DateTime para fecha inicio
  // - DateTime para fecha fin

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:
            Text('New Project', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project Title
            TextField(
              // TODO: Agregar controlador y validación
              decoration: InputDecoration(
                labelText: 'Project Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            Text('Project Duration',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            // Start Date Button
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Start Date'),
              subtitle: Text('Select date'), // TODO: Mostrar fecha seleccionada
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Implementar selección de fecha
                // - Mostrar DatePicker
                // - Validar que sea fecha futura
                // - Actualizar estado
              },
            ),

            // End Date Button
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('End Date'),
              subtitle: Text('Select date'), // TODO: Mostrar fecha seleccionada
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Implementar selección de fecha
                // - Mostrar DatePicker
                // - Validar que sea después de fecha inicio
                // - Actualizar estado
              },
            ),

            SizedBox(height: 20),
            // Description
            TextField(
              maxLines: 3,
              // TODO: Agregar controlador
              decoration: InputDecoration(
                labelText: 'Project Description (optional)',
                border: OutlineInputBorder(),
              ),
            ),

            Spacer(),
            // Create Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implementar creación de proyecto
                  // - Validar campos requeridos
                  // - Crear objeto Project
                  // - Guardar en base de datos/estado
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text('Create Project'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // TODO: Agregar métodos para:
  // - Inicializar controladores
  // - Limpiar controladores (dispose)
  // - Validar fechas
  // - Guardar proyecto
}
