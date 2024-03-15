import 'package:flutter/material.dart';

class FooterDaftar extends StatelessWidget {
  const FooterDaftar({super.key, required this.onPressedDaftar});

  final VoidCallback onPressedDaftar;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(onPressed: onPressedDaftar, child: const Text("Daftar")),
      ],
    );
  }
}