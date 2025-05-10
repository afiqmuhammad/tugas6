import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/afiq.jpg'), // pastikan file ini ada
          ),
          SizedBox(height: 16),
          Text(
            'afiq muhammad nur marzuki',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Email: afik@gmail.com', style: TextStyle(fontSize: 16)),
          Text('Hobi : belajar', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
