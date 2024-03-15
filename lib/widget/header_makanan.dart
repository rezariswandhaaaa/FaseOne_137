import 'package:flutter/material.dart';

class HeaderMakanan extends StatelessWidget {
  const HeaderMakanan({super.key,});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('MAKANAN',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
      ],
    );
  }
}