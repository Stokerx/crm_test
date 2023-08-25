
import 'package:crm_test/pages/login_page.dart';
import 'package:crm_test/rutas/rutas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aplicacion());
}

class Aplicacion extends StatelessWidget {
  const Aplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestorKay',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: getApplicationRoutes(),

      home: LoginPage(),
    );
  }
}