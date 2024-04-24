class Herramientas {
  final List<String> listado = [
    "Martillo",
    "Llave Inglesa",
    "Destornillador",
  ];

  static const List<String> listado2 = [
    "Martillo",
    "Llave Inglesa",
    "Destornillador",
  ];

  static final List<String> listado3 = [
    "Martillo",
    "Llave Inglesa",
    "Destornillador",
  ];
}

void main() {
  Herramientas misHerramientas = Herramientas();

  print(misHerramientas.listado);

  // print(Herramientas().listado);
  print(Herramientas.listado2);

  print(Herramientas.listado2 == Herramientas.listado3);

  Herramientas.listado3.add("New Valor");

  print(Herramientas.listado3);
}

class Colors {
  // static const Color = (0xFFFFFFFF);
}
