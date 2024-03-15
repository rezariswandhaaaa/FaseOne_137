import 'package:flutter/material.dart';

class FooterMakanan extends StatelessWidget {
  const FooterMakanan({super.key, required this.onPressedMakanan});

  final VoidCallback onPressedMakanan;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
            onPressed: onPressedMakanan, child: const Text("Submit")),
      ],
    );
  }
}
