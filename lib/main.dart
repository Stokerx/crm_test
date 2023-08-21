import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestorKay',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 105, 65, 64)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 126, 0, 119)),
              child: Row(
                children: <Widget>[
                  Text(
                    "GestorKay",
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 36, 25, 51)),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Acción para la opción 1
              },
            ),
            ListTile(
              leading: Icon(Icons.person_rounded),
              title: Text('Contact'),
              onTap: () {
                // Acción para la opción 2
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title:Text("Messenger"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.grading_outlined),
              title: Text("Productos"),
              onTap: () {},
            ),
            
            ListTile(
              leading: Icon(Icons.campaign),
              title: Text("Campaña"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.rocket),
              title: Text("Automatizar"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Ajustes"),
              onTap: () {},
            ),
            // Agrega más opciones aquí
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: 
          
          Text(
            "Panel",
            style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 150, 0, 0)),
          ),
        ),
      ),
      
    );
  }
}

