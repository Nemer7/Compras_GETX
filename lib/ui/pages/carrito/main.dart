import 'package:compras_getx/ui/pages/carrito/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain/controller/gestionarticulo.dart';

void main(List<String> args) {
  Get.put(ComprasController());
  runApp(const App());
}
