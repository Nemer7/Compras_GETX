import 'package:compras_getx/domain/articulo.dart';
import 'package:get/get.dart';

class ComprasController extends GetxController {
  Rx<List<Articulo>> listArt = Rx<List<Articulo>>([]);

  @override
  void onInit() {
    // TODO: implement onInit
    listArt.value = listaArticulo;
    super.onInit();
  }

  List<Articulo> get articulos => listArt.value;

  void agregarArticulo(Articulo articulo) {
    listArt.value.add(articulo);
  }

  void eliminarArticulo(Articulo articulo) {
    listArt.value.remove(articulo);
  }
}
