import 'package:flutter/material.dart';

class FormDaftar extends StatefulWidget {
  const FormDaftar(
      {super.key,
      required this.formkey,
      required this.etNama,
      required this.etTelepon,});

  final GlobalKey<FormState> formkey;
  final TextEditingController etNama;
  final TextEditingController etTelepon;


  @override
  State<FormDaftar> createState() => _FormDaftarState();
}

class _FormDaftarState extends State<FormDaftar> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              labelText: 'Nama',
              hintText: 'Masukkan Nama',
              prefixIcon: const Icon(Icons.account_box),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0))),
          validator: (value) {
            if (value!.isEmpty) {
              return "Tidak Boleh Kosong";
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: 'Nomor telepon',
              hintText: 'Masukkan Nomor',
              prefixIcon: Icon(Icons.add_call),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0))),
          validator: (value) {
            bool valid = RegExp(r"0123456789").hasMatch(value!);
            if (value.isEmpty) {
              return "Tidak Boleh Kosong";
            } else if (!valid) {
              return "harus menggunakan angka";
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Alamat',
              hintText: 'Masukkan Alamat',
              prefixIcon: Icon(Icons.add_home_work),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0))),
          validator: (value) {
                bool valid = RegExp(r"qwertyuiopasdfghjklzxcvbnm").hasMatch(value!);
                if (value.isEmpty) {
                  return "Tidak Boleh Kosong";
                } else if (!valid) {
                  return "harus Text";
                }
                return null;
              },
        ),
      ],
    ));
  }
}
