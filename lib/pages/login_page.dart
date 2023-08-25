import 'dart:io';

import 'package:crm_test/styles.dart';
import 'package:crm_test/widgets/formcard.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    double height = MediaQuery.of(context).size.width;
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
              flex: 2,
              child: FormCard(),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: height,
                
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                    ),
                    child: Image(image: AssetImage("lib/images/flayer.png"), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
