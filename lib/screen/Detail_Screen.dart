import 'package:flutter/material.dart';
import 'package:ucp1/screen/Daftar_Screen.dart';
import 'package:ucp1/widget/footer_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.formkey,
      required this.nama,
      required this.telepon,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final GlobalKey<FormState> formkey;
  final String nama;
  final String telepon;
  final String makanan;
  final String minuman;
  final String dessert;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $nama',),
            Text('Nomor Telepon: $telepon'),
            Text('Makanan: $makanan'),
            Text('Minuman: $minuman'),
            Text('Dessert: $dessert'),
            const SizedBox(
              height: 20,
            ),
            FooterDetail(onPressedBack: () {
              if (formkey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                  context,
                    MaterialPageRoute(builder: (context) => DaftarScreen()),
                    (route) => false);
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Berhasil kembali")));
              }
            })
          ],
        ),
      ),
    );
  }
}
