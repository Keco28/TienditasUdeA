import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_svg/flutter_svg.dart';


class UniversityMap extends StatelessWidget {

  List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adjust the size as needed
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: PhotoView(
        imageProvider: AssetImage('assets/images/map.jpeg'),
        minScale: PhotoViewComputedScale.contained,
        maxScale: PhotoViewComputedScale.covered * 2,
        backgroundDecoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }


  void loadMarkers(){
    markers.add(
      Marker(
          width:40.0,
          height: 40.0,
          point: LatLng(0.0,0.0),
          child: Icon(Icons.location_on, color: Colors.red),
      ),
    );
  }

}
// assets/images/map.jpeg