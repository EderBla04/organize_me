import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'English',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'OrganizeMe is a project developed by Blanco Software, '
              'focusing on helping people manage their daily tasks and projects effectively. '
              '\n\nFeatures:'
              '\n• Task organization'
              '\n• Project management'
              '\n• Daily reminders'
              '\n• Progress tracking'
              '\n• Customizable categories',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              'Español',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'OrganizeMe es un proyecto desarrollado por Blanco Software, '
              'enfocado en ayudar a las personas a gestionar sus tareas y proyectos diarios de manera efectiva. '
              '\n\nCaracterísticas:'
              '\n• Organización de tareas'
              '\n• Gestión de proyectos'
              '\n• Recordatorios diarios'
              '\n• Seguimiento de progreso'
              '\n• Categorías personalizables',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Developed by Blanco Software © 2024-2025',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
