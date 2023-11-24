import 'package:flutter/material.dart';

class StoreView extends StatelessWidget {
  final String storeName;
  final String storeDescription;
  final String imagePath;

  StoreView({
    required this.storeName,
    required this.storeDescription,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(storeName),
      ),
      body: Column(
        children: [
          // Image and description section
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              storeDescription,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}