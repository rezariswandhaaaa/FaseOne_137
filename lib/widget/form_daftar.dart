import 'package:flutter/material.dart';

class FormDaftar extends StatefulWidget {
  const FormDaftar({
    Key? key,
    required this.formkey,
    required this.etNama,
    required this.etTelepon,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;
  final TextEditingController etNama;
  final TextEditingController etTelepon;

  @override
  State<FormDaftar> createState() => _FormDaftarState();
}

class _FormDaftarState extends State<FormDaftar> {
  String? _jenisKelamin;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etNama,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Nama',
              hintText: 'Masukkan Nama',
              prefixIcon: const Icon(Icons.account_box),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Tidak Boleh Kosong";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.etTelepon,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Nomor telepon',
              hintText: 'Masukkan Nomor',
              prefixIcon: Icon(Icons.add_call),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Tidak Boleh Kosong";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Alamat',
              hintText: 'Masukkan Alamat',
              prefixIcon: Icon(Icons.add_home_work),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Tidak Boleh Kosong";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text('Jenis Kelamin:'),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Radio<String>(
                    value: 'P',
                    groupValue: _jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        _jenisKelamin = value;
                      });
                    },
                  ),
                ],
              ),
              const Text('P'),
              Column(
                children: [
                  Radio<String>(
                    value: 'L',
                    groupValue: _jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        _jenisKelamin = value;
                      });
                    },
                  ),
                ],
              ),
              const Text('L'),
            ],
          ),
        ],
      ),
    );
  }
}
