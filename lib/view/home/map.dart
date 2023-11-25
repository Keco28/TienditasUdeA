import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_svg/flutter_svg.dart';


class UniversityMap extends StatelessWidget {

  List<Marker> markers = [];
  Future<ui.Image> loadImage() async {
    final ByteData data = await rootBundle.load('assets/images/map.jpeg');
    final List<int> bytes = data.buffer.asUint8List();
    final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
    final ui.Image imgui = await loadImageFromByteData(Uint8List.fromList(img.encodePng(image)));
    return imgui;
}

  Future<ui.Image> loadImageFromByteData(Uint8List img) async {
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(Uint8List.fromList(img), (ui.Image img) {
      return completer.complete(img);
    });
    return completer.future;
  }
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