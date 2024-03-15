import 'package:flutter/material.dart';

class HeaderDaftar extends StatelessWidget {
  const HeaderDaftar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://pbs.twimg.com/media/DoUnSvrU0AA7Tbl.jpg:small"),
          radius: 70,
        ),
        SizedBox(
          height: 25,
        ),
        Text("TERBUN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
      ],
    );
  }
}
