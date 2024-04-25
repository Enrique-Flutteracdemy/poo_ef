abstract class Persona {
  final String nombre;
  int edad;

  Persona({
    required this.nombre,
    required this.edad,
  });

  void imprimirNombre() {
    print('Nombre: $nombre :::::: Edad: $edad');
  }
}

class Cliente extends Persona {
  Cliente({
    required int edadActual,
    required String nombreActual,
  }) : super(
          nombre: nombreActual,
          edad: edadActual,
        );
}

void main() {
  Cliente persona1 = Cliente(edadActual: 10, nombreActual: "Jose");

  print(persona1.nombre);

  persona1.imprimirNombre();
}
