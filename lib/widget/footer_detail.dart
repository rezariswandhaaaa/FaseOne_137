import 'package:flutter/material.dart';

class FooterDetail extends StatelessWidget {
  const FooterDetail({super.key, required this.onPressedBack});

  final VoidCallback onPressedBack;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        ElevatedButton(onPressed: onPressedBack, child: Text('Back'))
      ],
    );
  }
}
