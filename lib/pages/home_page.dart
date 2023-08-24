import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://r4.wallpaperflare.com/wallpaper/448/174/357/neon-4k-hd-best-for-desktop-wallpaper-b896bd6800903c48d09c01fed852c41a.jpg"), fit:BoxFit.cover,)
      ),
      child: Center(
        child: Text("alfin"),
      ),
    );
  }
}