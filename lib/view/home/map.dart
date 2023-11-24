import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class UniversityMap extends StatelessWidget {

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
}

// assets/images/map.jpeg