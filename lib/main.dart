import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  String selectedOption='Home';

  void selectOption(String option){
    setState(() {
      selectedOption=option;
    });
  }

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
                selectOption('Home');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_rounded),
              title: Text('Contact'),
              onTap: () {
                selectOption('Contact');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title:Text("Messenger"),
              onTap: () {
                selectOption('Messenger');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.grading_outlined),
              title: Text("Productos"),
              onTap: () {
                selectOption('Productos');
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              leading: Icon(Icons.campaign),
              title: Text("Campaña"),
              onTap: () {
                selectOption('Campaña');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.rocket),
              title: Text("Automatizar"),
              onTap: () {
                selectOption('Automatizar');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Ajustes"),
              onTap: () {
                selectOption('Ajustes');
                Navigator.pop(context);
              },
            ),
            // Agrega más opciones aquí
          ],
        ),
      ),
      body: Center(
        child: 
          
          Text(
            "Panel",
            style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 150, 0, 0)),
          ),
        
      ),

      
    );
  }
}

