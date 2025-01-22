import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  // Constructor with key parameter
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top navigation bar
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
      // Main content with scroll capability
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Task title input field
            TextField(
              decoration: InputDecoration(
                hintText: 'Task title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Task description input field (multiline)
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Date selection option
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Select date'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            // Priority selection option
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

            // Attachment option
            ListTile(
              leading: Icon(Icons.attach_file),
              title: Text('Add attachment'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            // Assign to option
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Assign to'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            SizedBox(height: 32),

            // Create task button
            SizedBox(
              width: double.infinity, // Makes button full width
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text('Create Task'),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
