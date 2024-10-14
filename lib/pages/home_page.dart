import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DAFTAR BUKU KU')),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: ListView(
          children: [
            ListTile(
              title: Text("Harry Potter and the Sorcerer's Stone"),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail', arguments: "Harry Potter and the Sorcerer's Stone");
                },
                child: Text('Detail Buku'),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
