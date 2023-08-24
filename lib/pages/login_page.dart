import 'dart:io';

import 'package:crm_test/styles.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.height;
    double height=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SizedBox(
        width: double.infinity,
        height: height,
        child: Row(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Expanded(
              child: Container(
                height: height,
                //color: Color.fromARGB(255, 212, 72, 72),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*SizedBox(
                      height: height*0.145,
                      
                    ),*/
                    Image.asset("lib/images/logo.png", scale: 5.5,),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Gestor Kay",
                          style: ralewayStyle.copyWith(
                            fontSize: 25,
                            color: Colors.black,
                          )
                        )
                      ]
                    )),
                    SizedBox(height: height*0.02,),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Usuario",
                          style: ralewayStyle.copyWith(
                            fontSize: 25,
                            color: Colors.black,
                          )
                        )
                      ]
                    )),
                    Container(
                      height: 50.0,
                      width: width*0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromARGB(255, 217, 217, 217)
                      ),
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: height*1.2),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.02,),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Contraseña",
                          style: ralewayStyle.copyWith(
                            fontSize: 25,
                            color: Colors.black,
                          )
                        )
                      ]
                    )),
                    Container(
                      height: 50.0,
                      width: width*0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromARGB(255, 217, 217, 217)
                      ),
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: height*1.2),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Container(
                height: height,
                
                //color: Color.fromARGB(255, 161, 132, 222),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/images/flayer.png"),)
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}