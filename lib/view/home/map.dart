import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:photo_view/photo_view.dart';
import 'package:super_tooltip/super_tooltip.dart';



class UniversityMap extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      // Adjust the size as needed
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: PhotoView(
        imageProvider: AssetImage('assets/images/map.jpeg'),
        minScale: PhotoViewComputedScale.covered / 2,
        maxScale: PhotoViewComputedScale.covered * 2,
        backgroundDecoration: BoxDecoration(color: const Color(0xFFFFFFFF).withOpacity(0.23)
        ),
      ),
    );
  }
}

// assets/images/map.jpeg