import 'package:flutter/material.dart';
import 'package:organize_me/views/about_screen.dart';
import 'package:organize_me/views/account_information_screen.dart';
import 'package:organize_me/views/settings_screen.dart';

class ProfileMenuScreen extends StatelessWidget {
  const ProfileMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Account Information
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue),
            title: Text('Account Information'),
            subtitle: Text('View and update your account details'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AccountInformationScreen()),
              );
              // Navigate to account information screen
            },
          ),
          Divider(),
          // Settings
          ListTile(
            leading: Icon(Icons.settings, color: Colors.green),
            title: Text('Settings'),
            subtitle: Text('Customize your app preferences'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
              // Navigate to settings screen
            },
          ),
          Divider(),
          // About
          ListTile(
            leading: Icon(Icons.info, color: Colors.orange),
            title: Text('About'),
            subtitle: Text('Learn more about this app'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
              // Navigate to about screen
            },
          ),
        ],
      ),
    );
  }
}
