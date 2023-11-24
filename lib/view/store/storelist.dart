import 'package:flutter/material.dart';
import 'package:tienditas_udea/view/store/store.dart';

import '../home/home.dart';

class StoreList extends StatelessWidget{

  const StoreList({Key? key,}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    List<String> tienditas = [
      "La Migueria",
      "Patacones",
      "Arepas de Queso",
      "Postres de Peño",
      "Domo",
    ];
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Tienditas'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          itemCount: tienditas.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: GestureDetector(
                // Navigate to the StoreView passing the store name and description
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreView(
                      storeName: tienditas[index],
                      storeDescription: "Description for ${tienditas[index]}.",
                      imagePath: 'assets/images/store${index + 1}.jpeg', // Adjust image paths as needed
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      // Aqui vamos a poner la imagen mas adelante
                      SizedBox(width: 60),
                      Text(
                        tienditas[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          fontStyle: FontStyle.normal,
                          height: 1.33,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
