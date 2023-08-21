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
      body: getSelectedOptionWidget(selectedOption),

      
    );
  }

  Widget getSelectedOptionWidget(String option) {
    Color backgroundColor;
    String text;

    switch (option) {
      case 'Home':
        
        text = 'Home Panel';
        break;
      case 'Contact':
        backgroundColor = Colors.green;
        text = 'Contact Panel';
        break;
      case 'Messenger':
        backgroundColor = const Color.fromARGB(255, 175, 157, 76);
        text = 'MSg Panel';
        break;
      case 'Productos':
        backgroundColor = const Color.fromARGB(255, 142, 168, 142);
        text = 'Productos Panel';
        break;
      case 'Campaña':
        backgroundColor = Colors.green;
        text = 'Campaing Panel';
        break;
      case 'Automatizar':
        backgroundColor = Colors.green;
        text = 'Bot Panel';
        break;
      case 'Ajustes':
        backgroundColor = Colors.green;
        text = 'Settings Panel';
        break;
      default:
        backgroundColor = Colors.grey;
        text = 'Unknown Panel';
    }

    return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/448/174/357/neon-4k-hd-best-for-desktop-wallpaper-preview.jpg"),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  );


  }
}





