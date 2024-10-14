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
              title: Text('Sejarah Dunia Yang Disembunyikan'),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail', arguments: 'Sejarah Dunia Yang Disembunyikan');
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
