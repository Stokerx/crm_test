
import 'package:crm_test/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aplicacion());
}

class Aplicacion extends StatelessWidget {
  const Aplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}