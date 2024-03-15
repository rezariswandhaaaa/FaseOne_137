import 'package:flutter/material.dart';
import 'package:ucp1/widget/footer_makanan.dart';
import 'package:ucp1/widget/form_makanan.dart';
import 'package:ucp1/widget/header_makanan.dart';

class MakananScreen extends StatefulWidget {
  const MakananScreen({super.key, required this.nama, required this.telepon});

  final String nama;
  final String telepon;

  @override
  State<MakananScreen> createState() => _MakananScreenState();
}

class _MakananScreenState extends State<MakananScreen> {
  var desrt = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderMakanan(),
            Text('Nama : ${widget.nama}'),
            Text('Nomor Telepon : ${widget.telepon}'),
            FormMakanan(
              etDesert: desrt,
              formkey: formkey,
            ),
            FooterMakanan(onPressedMakanan: () {})
          ],
        ),
      ),
    );
  }
}
