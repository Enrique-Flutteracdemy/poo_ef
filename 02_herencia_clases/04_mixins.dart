abstract class Astro {
  void imprimir1(String texto) {
    final hoy = DateTime.now();
    print('$hoy ::::: $texto');
  }
}

mixin Astro2 {
  void imprimirHola() {
    print('hola mundo');
  }
}

mixin Astro3 {}

class Observatorio extends Astro with Astro2, Astro3 {}

void main() {
  final astro = Observatorio();

  astro.imprimir1("Mi primer desc");

  astro.imprimirHola();

  //https://medium.com/comunidad-flutter/dart-qué-son-los-mixins-5f2ab880a4ce
}
