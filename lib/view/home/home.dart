import "package:flutter/material.dart";

import "body.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState()=>HomeState();
}

class HomeState extends State<Home> {

  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: myAppBar(),
      body: const Body(),
    );
  }

  AppBar myAppBar(){
    return AppBar(foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      elevation: 0,
      title: Text("Bienvenido a Tienditas UdeA"),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
    );
  }
}

