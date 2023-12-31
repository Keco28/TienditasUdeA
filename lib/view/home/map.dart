import 'package:flutter/material.dart';

import '../store/store.dart';

class UniversityMap extends StatefulWidget {
  @override
  _UniversityMapState createState() => _UniversityMapState();
}

class _UniversityMapState extends State<UniversityMap> {
  final TransformationController _controller = TransformationController();

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
              left: MediaQuery.of(context).size.width * 0.69, // Adjust as needed
              top: MediaQuery.of(context).size.height * 0.19, // Adjust as needed
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoreView(
                          storeName: "La Migueria",
                          storeDescription:"Ubicación: Plazoleta Barrientos\n" ,
                          imagePath: 'assets/images/migueria.jpg',
                          storeIcon: 'assets/images/migueria-icono.png,'),
                      ),
                    );
                  },

                  child: ClipOval(
                    child: Image.asset('assets/images/migueria-icono.png',
                    ),
                  )
                ),
            ),
            Positioned(
              left:MediaQuery.of(context).size.width * 0.59, // Adjust as needed
              top: MediaQuery.of(context).size.height * 0.19, // Adjust as needed
              child: Transform(
                transform: Matrix4.inverted(_controller.value),
                child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreView(
                              storeName: "Arboreo",
                              storeDescription:"Ubicación: Plazoleta Barrientos\n"
                                  "\n"
                                  "siempre lleno de alegría y de delicias; la combinación perfecta para pasar un rato agradable dentro de la U!",
                              imagePath: 'assets/images/arboreo.jpg',
                              storeIcon: 'assets/images/arboreo-icono.jpg'),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.asset('assets/images/arboreo-icono.jpg',
                      ),
                    )
                ),
              ),
            ),
            Positioned(
                left:MediaQuery.of(context).size.width * 0.46, // Adjust as needed
                top: MediaQuery.of(context).size.height * 0.13, // Adjust as needed
              child: Transform(
                transform: Matrix4.inverted(_controller.value),
                child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreView(
                              storeName: "Domo",
                              storeDescription:"Ubicación: Alrededores de la U\n"
                                  "\n"
                                  "Los Domo móviles no solo brindan bienestar a quienes se acercan a ellos a comprar un pasabocas o un café, también son una ayuda para estudiantes de todas las unidades académicas.",
                              imagePath: 'assets/images/domo.jpg',
                              storeIcon: 'assets/images/domo-icono.png'),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.asset('assets/images/domo-icono.png',
                      ),
                    )
                ),
              ),
            ),
            Positioned(
              left:MediaQuery.of(context).size.width * 0.73, // Adjust as needed
              top: MediaQuery.of(context).size.height * 0.19, // Adjust as needed
              child: Transform(
                transform: Matrix4.inverted(_controller.value),
                child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreView(
                              storeName: "Rikuritas",
                              storeDescription:"Ubicación: Plazoleta Barrientos\n"
                                  "\n"
                                  "Uno de los dos primeros locales de comida varia de la Universidad en acogerse de manera oficial a la estrategia de Cero Plástico de un solo uso en la UdeA. ",
                              imagePath: 'assets/images/rikuritas.jpg',
                              storeIcon: 'assets/images/rikuritas-icono.jpg'),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.asset('assets/images/rikuritas-icono.jpg',
                      ),
                    )
                ),
              ),
            ),
            Positioned(
              left:MediaQuery.of(context).size.width * 0.29, // Adjust as needed
              top: MediaQuery.of(context).size.height * 0.13, // Adjust as needed
              child: Transform(
                transform: Matrix4.inverted(_controller.value),
                child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreView(
                        storeName: "Tienda Universitaria",
                        imagePath: 'assets/images/tienda-universitaria.jpg',
                        storeDescription: "Ubicación: Bloque 22\n"
                            "\n"
                            "La Tienda Universitaria, iniciativa de la Fundación Universidad de Antioquia, abrió sus puertas en 1999 para generar algunos ingresos económicos con la venta de artículos cotidianos y artesanías. La tienda, además, promueve el sentido de pertenencia por la Alma Máter de los antioqueños.",
                        storeIcon: 'assets/images/tienda-universitaria-icono.png',
                        ),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.asset('assets/images/tienda-universitaria-icono.png',
                      ),
                    )
                ),
              ),
            ),
            Positioned(
              left:MediaQuery.of(context).size.width * 0.35, // Adjust as needed
              top: MediaQuery.of(context).size.height * 0.09, // Adjust as needed
              child: Transform(
                transform: Matrix4.inverted(_controller.value),
                child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreView(
                            storeName: "De Lolita",
                            imagePath: 'assets/images/lolita.jpg',
                            storeDescription: "Ubicación: Entre Bloque 22 y 21\n"
                                "\n"
                                "Tienda comprometida a impactar la vida de personas que solo llegaron por un trabajo para que ellos impacten la vida de personas que llegaron por solo un café.",
                            storeIcon: 'assets/images/lolita-icono.png',
                          ),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.asset('assets/images/lolita-icono.png',
                      ),
                    )
                ),
              ),
            ),
            Positioned(
              left:MediaQuery.of(context).size.width * 0.80, // Adjust as needed
              top: MediaQuery.of(context).size.height * 0.19, // Adjust as needed
              child: Transform(
                transform: Matrix4.inverted(_controller.value),
                child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreView(
                            storeName: "Frito Gay",
                            imagePath: 'assets/images/frito.jpg',
                            storeDescription: "Ubicación: Plazoleta Barrientos\n"
                                "\n"
                                "pastelitos y papas pa los descansos de compumovil",
                            storeIcon: 'assets/images/frito-icono.png',
                          ),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Image.asset('assets/images/frito-icono.png',
                      ),
                    )
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
