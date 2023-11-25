import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:tienditas_udea/view/store/storelist.dart';

import '../store/store.dart';

class UniversityMap extends StatefulWidget {
  @override
  _UniversityMapState createState() => _UniversityMapState();
}

class _UniversityMapState extends State<UniversityMap> {
  final TransformationController _controller = TransformationController();

  @override
  void initState() {
    super.initState();
    _controller.value = Matrix4.identity()
      ..scale(5) // Adjust the initial scale as needed
      ..translate(0.0, -50.0); // Adjust the initial position as needed
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: InteractiveViewer(
        transformationController: _controller,
        minScale: 0.1,
        maxScale: 2.0,
        child: Stack(
          children: <Widget>[
            Image.asset('assets/images/map.jpeg'),
            Positioned(
              left: 50.0, // Adjust as needed
              top: 50.0, // Adjust as needed
              child: Transform(
                transform: Matrix4.inverted(_controller.value),
                child: FloatingActionButton(
                  onPressed: () {
                    //
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
            // Add more buttons as needed
          ],
        ),
      ),
    );
  }
}


