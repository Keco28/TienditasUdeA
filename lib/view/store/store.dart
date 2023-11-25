import 'package:flutter/material.dart';

class StoreView extends StatelessWidget {
  final String storeName;
  final String storeDescription;
  final String imagePath;
  final String storeIcon;

  StoreView({
    required this.storeName,
    required this.storeDescription,
    required this.imagePath,
    required this.storeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Text(storeName),
      ),
      body: Column(
        children: [
          // Image and description section
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: 400,
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              storeDescription,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                letterSpacing: 0.5,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}