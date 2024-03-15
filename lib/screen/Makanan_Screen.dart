import 'package:flutter/material.dart';

class MakananScreen extends StatefulWidget {
  const MakananScreen({super.key, required this.nama, required this.telepon});

  final String nama;
  final String telepon;

  @override
  State<MakananScreen> createState() => _MakananScreenState();
}

class _MakananScreenState extends State<MakananScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama : ${widget.nama}'),
            Text('Nomor Telepon : ${widget.telepon}')
          ],
        ),
      ),
    );
  }
}
