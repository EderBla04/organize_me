import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('New Task', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Selection
            Text('When?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                ChoiceChip(
                  label: Text('Today'),
                  selected: true,
                  onSelected: (selected) {},
                ),
                SizedBox(width: 10),
                ChoiceChip(
                  label: Text('Tomorrow'),
                  selected: false,
                  onSelected: (selected) {},
                ),
              ],
            ),
            SizedBox(height: 20),
            // Projects
            Text('Projects',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                Chip(
                  label: Text('Holidays in Norway'),
                  backgroundColor: Colors.blue[100],
                ),
                Chip(
                  label: Text('Daily Tasks'),
                  backgroundColor: Colors.blue[100],
                ),
                ActionChip(
                  label: Text('+ Add Project'),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            // Task Title
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // Task Description
            TextField(
              decoration: InputDecoration(
                labelText: 'Description (optional)',
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            // Create Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Create'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
