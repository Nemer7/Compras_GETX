import 'package:compras_getx/ui/pages/carrito/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'manejo de estados',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ListaArticulo(),
      routes: {
        '/lista': (context) => const ListaArticulo(),
      },
    );
  }
}
