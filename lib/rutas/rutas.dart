import 'package:crm_test/menu.dart';
import 'package:crm_test/pages/login_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/menu': (BuildContext context)=> MyHomePage(),
    '/login': (BuildContext context) => LoginPage(),
    
  };
}