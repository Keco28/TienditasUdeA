import 'package:flutter/material.dart';
import 'package:tienditas_udea/view/store/store.dart';

import '../home/home.dart';

class StoreList extends StatelessWidget{
  const StoreList({Key? key,}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    List<StoreView> tienditas = [
      StoreView(
        storeName: "La Migueria",
        imagePath: 'assets/images/migueria.jpg',
        storeDescription: "Hola soy la miguería for La Migueria.",
        storeIcon: 'assets/images/migueria-icono.png',
      ),
      StoreView(
        storeName: "Patacones",
        imagePath: 'assets/images/store2.jpeg',
        storeDescription: "Personalized description for Patacones.",
        storeIcon: 'assets/images/store1.jpeg',
      ),
      StoreView(
        storeName: "Arepas de Queso",
        imagePath: 'assets/images/store1.jpeg',
        storeDescription: "Personalized description for Arepas de Queso.",
        storeIcon: 'assets/images/store1.jpeg',
      ),
      StoreView(
        storeName: "Postres de Peño",
        imagePath: 'assets/images/store1.jpeg',
        storeDescription: "Personalized description for Postres de Peño.",
        storeIcon: 'assets/images/store1.jpeg',
      ),
      StoreView(
        storeName: "Domo",
        imagePath: 'assets/images/store1.jpeg',
        storeDescription: "Hola Domo.",
        storeIcon: 'assets/images/store1.jpeg',
      ),
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
                        storeName: tienditas[index].storeName,
                        storeDescription: tienditas[index].storeDescription,
                        imagePath: tienditas[index].imagePath,
                        storeIcon: tienditas[index].storeIcon,),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      // Aqui vamos a poner la imagen mas adelante
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(tienditas[index].storeIcon),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        tienditas[index].storeName,
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
