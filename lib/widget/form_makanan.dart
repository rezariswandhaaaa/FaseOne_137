import 'package:flutter/material.dart';

class FormMakanan extends StatefulWidget {
  const FormMakanan({super.key, required this.formkey, required this.etDesert, required this.etMkn, required this.etMinum});

  final GlobalKey<FormState> formkey;
  final TextEditingController etMkn;
  final TextEditingController etMinum;
  final TextEditingController etDesert;

  @override
  State<FormMakanan> createState() => _FormMakananState();
}

class _FormMakananState extends State<FormMakanan> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formkey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.etMkn,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Makanan',
                hintText: 'Masukkan Nama Makanan',
                prefixIcon: const Icon(Icons.fastfood),
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
              controller: widget.etMinum,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Minuman',
                hintText: 'Masukkan Nama Minuman',
                prefixIcon: const Icon(Icons.local_drink),
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
              controller: widget.etDesert,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Dessert',
                hintText: 'Masukkan Nama Dessert',
                prefixIcon: const Icon(Icons.bakery_dining),
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
          ],
        ));
  }
}
