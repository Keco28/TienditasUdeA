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
        storeDescription: "Ubicación: Plazoleta Barrientos\n"
            "\n"
            "siempre lleno de alegría y de delicias; la combinación perfecta para pasar un rato agradable dentro de la U!",
        storeIcon: 'assets/images/migueria-icono.png',
      ),
      StoreView(
        storeName: "Arboreo",
        imagePath: 'assets/images/arboreo.jpg',
        storeDescription: "Ubicación: Plazoleta Barrientos\n"
            "\n"
            "Comida ligera, rica y saludable con conciencia social y ambiental.",
        storeIcon: 'assets/images/arboreo-icono.jpg',
      ),
      StoreView(
        storeName: "Domo",
        imagePath: 'assets/images/domo.jpg',
        storeDescription: "Ubicación: Alrededores de la U\n"
            "\n"
            "Los Domo móviles no solo brindan bienestar a quienes se acercan a ellos a comprar un pasabocas o un café, también son una ayuda para estudiantes de todas las unidades académicas.",
        storeIcon: 'assets/images/domo-icono.png',
      ),
      StoreView(
        storeName: "Rikuritas",
        imagePath: 'assets/images/rikuritas.jpg',
        storeDescription: "Ubicación: Plazoleta Barrientos\n"
            "\n"
            "Uno de los dos primeros locales de comida varia de la Universidad en acogerse de manera oficial a la estrategia de Cero Plástico de un solo uso en la UdeA. ",
        storeIcon: 'assets/images/rikuritas-icono.jpg',
      ),
      StoreView(
        storeName: "Tienda Universitaria",
        imagePath: 'assets/images/tienda-universitaria.jpg',
        storeDescription: "Ubicación: Bloque 22\n"
            "\n"
            "La Tienda Universitaria, iniciativa de la Fundación Universidad de Antioquia, abrió sus puertas en 1999 para generar algunos ingresos económicos con la venta de artículos cotidianos y artesanías. La tienda, además, promueve el sentido de pertenencia por la Alma Máter de los antioqueños.",
        storeIcon: 'assets/images/tienda-universitaria-icono.png',
      ),
      StoreView(
        storeName: "De Lolita",
        imagePath: 'assets/images/lolita.jpg',
        storeDescription: "Ubicación: Entre Bloque 22 y 21\n"
            "\n"
            "Tienda comprometida a impactar la vida de personas que solo llegaron por un trabajo para que ellos impacten la vida de personas que llegaron por solo un café.",
        storeIcon: 'assets/images/lolita-icono.png',
      ),
      StoreView(
        storeName: "Frito Gay",
        imagePath: 'assets/images/frito.jpg',
        storeDescription: "Ubicación: Plazoleta Barrientos\n"
            "\n"
            "pastelitos y papas pa los descansos de compumovil",
        storeIcon: 'assets/images/frito-icono.png',
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
