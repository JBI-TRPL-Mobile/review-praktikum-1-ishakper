import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil argumen judul buku dari route
    final String buku = ModalRoute.of(context)!.settings.arguments as String;

  
    String penulis = '';
    String deskripsi = '';
    String imageUrl = '';

    if (buku == "Harry Potter and the Sorcerer's Stone") {
      penulis = 'J.K. Rowling';
      deskripsi = 'Kisah seorang anak yatim piatu, Harry Potter, '
          'yang menemukan bahwa ia adalah penyihir dan mendaftar di Hogwarts School of Witchcraft and Wizardry, '
          'di mana ia belajar tentang sihir dan persahabatan.';
      imageUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuZc51kQHhf2Dn1y8ENa79gATgN4RTpmL76GJnxwRZOuSiDzl3KxoNv8WQl_MorvNs-VQ&usqp=CAU';
    }

    return Scaffold(
      appBar: AppBar(title: Text(buku)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Icon(Icons.broken_image, size: 100));
              },
            ),
            SizedBox(height: 16),
            Text(
              'Judul: $buku',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Penulis: $penulis'),
            SizedBox(height: 8),
            Text('Deskripsi: $deskripsi'),
          ],
        ),
      ),
    );
  }
}
