import 'package:crm_test/encabezado_page.dart';
import 'package:crm_test/pages/ajustes_page.dart';
import 'package:crm_test/pages/automatizar_page.dart';
import 'package:crm_test/pages/campaing_page.dart';
import 'package:crm_test/pages/contacts_page.dart';
import 'package:crm_test/pages/home_page.dart';
import 'package:crm_test/pages/mesagges_page.dart';
import 'package:crm_test/pages/productos_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = DrawerSections.home;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      print("si entra home wtf");
      container = HomePage();
    } else if (currentPage == DrawerSections.contacts) {
      print("si entra contactos wtf");
      container = ContactsPage();
    } else if (currentPage == DrawerSections.messenger) {
      container = MessengerPage();
    } else if (currentPage == DrawerSections.productos) {
      container = ProductosPage();
    } else if (currentPage == DrawerSections.campaing) {
      container = CampaingPage();
    } else if (currentPage == DrawerSections.automatizar) {
      container = AutomatizarPage();
    } else if (currentPage == DrawerSections.ajustes) {
      container = AjustesPage();
    }

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 43, 18, 59),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Encabezado(),
                listaBotonesDrawer(),
              ],
            ),
          ),
        ),
      ),
      body: container,
    );
  }

  Widget listaBotonesDrawer() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, "Home", Icons.home,
              currentPage == DrawerSections.home ? true : false),
          menuItem(2, "Contacts", Icons.contacts,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Messenger", Icons.message,
              currentPage == DrawerSections.messenger ? true : false),
          menuItem(4, "Products", Icons.storage_rounded,
              currentPage == DrawerSections.productos ? true : false),
          menuItem(5, "Campaña", Icons.campaign,
              currentPage == DrawerSections.campaing ? true : false),
          menuItem(6, "Automatizar", Icons.rocket,
              currentPage == DrawerSections.automatizar ? true : false),
          menuItem(7, "Ajustes", Icons.settings,
              currentPage == DrawerSections.ajustes ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Color.fromARGB(255, 32, 12, 34) : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              print("home");
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              print("contacst");
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              print("msg");
              currentPage = DrawerSections.messenger;
            } else if (id == 4) {
              print("prod");
              currentPage = DrawerSections.productos;
            } else if (id == 5) {
              print("camp");
              currentPage = DrawerSections.campaing;
            } else if (id == 6) {
              print("auto");
              currentPage = DrawerSections.automatizar;
            } else if (id == 7) {
              print("ajusts");
              currentPage = DrawerSections.ajustes;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Color.fromARGB(255, 255, 255, 255),
              )),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  contacts,
  messenger,
  productos,
  campaing,
  automatizar,
  ajustes,
}
