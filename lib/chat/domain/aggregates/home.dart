import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff368983),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Este es el icono posicionado de forma responsiva
                      Positioned(
                        top: 10,
                        right: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                            height: 40,
                            width: 40,
                            color: Color.fromRGBO(250, 250, 250, 0.1),
                            child: Icon(
                              Icons.notification_add_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ejemplo de app',
                              style: TextStyle(
                                color: Color.fromARGB(255, 224, 223, 223),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Jesus Mendoza',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             LayoutBuilder(
              builder: (context, constraints) {
                double containerHeight = constraints.maxHeight * 0.20; // 20% de la altura de la pantalla
                double containerWidth = constraints.maxWidth * 0.9; // 90% del ancho de la pantalla
                double topPosition = constraints.maxHeight * 0.15; // 15% de la altura de la pantalla
                double leftPosition = (constraints.maxWidth - containerWidth) / 2 - 10;

                if (constraints.maxWidth < 600) {
                  // Para dispositivos móviles
                  containerWidth = constraints.maxWidth * 0.8;
                  leftPosition = (constraints.maxWidth - containerWidth) / 2;
                  topPosition = 260; // Espacio para móviles, después del primer contenedor
                }
                return Positioned(
                  top: topPosition,
                  left: leftPosition,
                  child: Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 125, 121),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              },
            ),
            // Otros widgets aquí
          ],
        ),
      ),
    );
  }
}
