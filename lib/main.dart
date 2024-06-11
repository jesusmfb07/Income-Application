import 'package:app_movil/side_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:app_movil/home.dart';
import 'package:provider/provider.dart';
// Asegúrate de que la ruta es correcta

import 'home.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => SideMenuController())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

