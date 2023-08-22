import 'package:flutter/material.dart';

class Encabezado extends StatefulWidget {
  const Encabezado({super.key});

  @override
  State<Encabezado> createState() => _EncabezadoState();
}

class _EncabezadoState extends State<Encabezado> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Color.fromARGB(255, 100, 100, 100),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/448/174/357/neon-4k-hd-best-for-desktop-wallpaper-preview.jpg")),
            ),
          ),
          Text("Usuario", style: TextStyle(color: Color.fromARGB(255, 28, 29, 29), fontSize: 20),)
        ],
      ),
    );
  }
}