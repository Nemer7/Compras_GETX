class Articulo {
  late String foto;
  late String detalle;
  late String codigo;
  late int existencias;
  late bool estado;

  Articulo({
    required this.foto,
    required this.detalle,
    required this.codigo,
    required this.existencias,
    required this.estado,
  });

  factory Articulo.crear(Map<String, dynamic> json) {
    return Articulo(
      foto: json['foto'],
      detalle: json['detalle'],
      codigo: json['codigo'],
      existencias: json['existencias'],
      estado: json['estado'],
    );
  }
}

var articulo = {
  'foto':
      'https://res.cloudinary.com/dzjbogzom/image/upload/v1679341312/Mobil/Samsung_s23_bz8yuv.jpg',
  'detalle': ' Celular: Samsung Modelo:S23 Ultra',
  'codigo': 'SA015EL0YRENFLCO',
  'existencias': 10,
  'estado': true,
};

var articulo2 = {
  'foto':
      'https://res.cloudinary.com/dzjbogzom/image/upload/v1679341312/Mobil/Samsung_s23_bz8yuv.jpg',
  'detalle': ' Celular: Samsung Modelo:S23 Ultra',
  'codigo': 'SA015EL0YRENFLCO',
  'existencias': 13,
  'estado': false,
};

var articulo3 = {
  'foto':
      'https://res.cloudinary.com/dzjbogzom/image/upload/v1679341318/Mobil/Redmi_11_gjytrz.jpg',
  'detalle': ' Celular: Redmi Note 11',
  'codigo': 'XI310EL1M78QJLCO',
  'existencias': 20,
  'estado': true,
};

var articulo4 = {
  'foto':
      'https://res.cloudinary.com/dzjbogzom/image/upload//f_auto/v1679341307/Mobil/Iphon13_shio99.jpg',
  'detalle': ' iPhone 13. El sistema de dos cámaras más avanzado en un iPhone',
  'codigo': 'AP039EL0PBH9KLCO',
  'existencias': 15,
  'estado': true,
};

List<Articulo> listaArticulo = [
  Articulo.crear(articulo),
  Articulo.crear(articulo2),
  Articulo.crear(articulo3),
  Articulo.crear(articulo4)
];
