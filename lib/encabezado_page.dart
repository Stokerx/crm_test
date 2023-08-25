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
      color: Color.fromARGB(255, 33, 1, 75),
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
              image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/d5/5f/42/d55f42c1edee2c7f60b803a51f0f17df.jpg")),
            ),
          ),
          Text("Usuario", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),)
        ],
      ),
    );
  }
}