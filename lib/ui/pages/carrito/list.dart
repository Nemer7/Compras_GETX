import 'package:compras_getx/domain/controller/gestionarticulo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListaArticulo extends StatefulWidget {
  const ListaArticulo({super.key});

  @override
  State<ListaArticulo> createState() => _ListaArticuloState();
}

class _ListaArticuloState extends State<ListaArticulo> {
  ComprasController controlc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articulos'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: controlc.articulos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    controlc.articulos[index].foto,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(controlc.articulos[index].codigo),
                Text(controlc.articulos[index].detalle),
                ElevatedButton(
                  onPressed: () {
                    controlc.agregarArticulo(controlc.articulos[index]);
                  },
                  child: const Text('Agregar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
