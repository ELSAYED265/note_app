import 'package:flutter/material.dart';

import 'custom_appBer.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Column(
        children: [SizedBox(height: 50), CustomAppber(), NoteItems()],
      ),
    );
  }
}

class NoteItems extends StatelessWidget {
  const NoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter tips ",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Text(
                "build your career",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.delete, color: Colors.black),
            ),
            Text("May21 ,2022", style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
