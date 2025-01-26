import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 400,
                width: 400,
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
            Text(
              'Contact',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            // Gmail interactivo
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('mailto:edergaelblanco04@gmail.com'));
              },
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.envelope),
                  SizedBox(width: 10),
                  Text(
                    'edergaelblanco04@gmail.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Teléfono interactivo
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('tel:+527681007755'));
              },
              child: Row(
                children: const [
                  Icon(FontAwesomeIcons.phone),
                  SizedBox(width: 10),
                  Text(
                    '+52 768 100 7755',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Social Networks',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      //Abrir instagram
                      launchUrl(
                          Uri.parse('https://www.instagram.com/gaelblanco04/'));
                    },
                    icon: Icon(FontAwesomeIcons.instagram)),
                IconButton(
                    onPressed: () {
                      //Abrir facebook
                    },
                    icon: Icon(FontAwesomeIcons.facebook)),
                IconButton(
                    onPressed: () {
                      //Abrir github

                      launchUrl(Uri.parse('https://github.com/EderBla04'));
                    },
                    icon: Icon(FontAwesomeIcons.github)),
                IconButton(
                    onPressed: () {
                      //Abrir linkedin
                      launchUrl(Uri.parse(
                          'https://www.linkedin.com/in/eder-gael-blanco-alejandre-540663216/'));
                    },
                    icon: Icon(FontAwesomeIcons.linkedin)),
                IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse(
                          'https://open.spotify.com/user/312ftnkivfcqrefka37zeiekzi7q?si=4496bb68d4804032'));
                    },
                    icon: Icon(FontAwesomeIcons.spotify)),
              ],
            ),

            Divider(),
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
