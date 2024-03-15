import 'package:flutter/material.dart';
import 'package:ucp1/screen/Makanan_Screen.dart';
import 'package:ucp1/widget/footer_daftar.dart';
import 'package:ucp1/widget/form_daftar.dart';
import 'package:ucp1/widget/header_daftar.dart';

class DaftarScreen extends StatelessWidget {
  const DaftarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var telp = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              HeaderDaftar(),
              FormDaftar(
                etNama: nama,
                etTelepon: telp,
                formkey: formkey,
              ),
              FooterDaftar(onPressedDaftar: () {
                if (formkey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MakananScreen(
                              nama: nama.text,
                              telepon: telp.text,
                            )),
                  );
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Daftar Berhasil")));
                }
              })
            ],
          ),
        ),
      )),
    );
  }
}
