import 'package:flutter/material.dart';
import 'package:tienditas_udea/view/home/map.dart';
import 'package:tienditas_udea/view/home/search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearch(size: size),
          UniversityMap(),
        ],
      ),
    );
  }
}