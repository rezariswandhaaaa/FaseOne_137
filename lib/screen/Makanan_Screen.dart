import 'package:flutter/material.dart';
import 'package:ucp1/screen/Detail_Screen.dart';
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
  var makn = TextEditingController();
  var mnm = TextEditingController();
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
              etMkn: makn,
              etMinum: mnm,
              etDesert: desrt,
              formkey: formkey,
            ),
            FooterMakanan(onPressedMakanan: () {
              if (formkey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              nama: widget.nama,
                              telepon: widget.telepon,
                              makanan: makn.text,
                              minuman: mnm.text,
                              dessert: desrt.text,
                              formkey: formkey,
                            )));
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Submit Berhasil")));
              }
            })
          ],
        ),
      ),
    );
  }
}
