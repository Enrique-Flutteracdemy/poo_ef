class Rectangulo {
  late int baseR;
  late int altura;
  late int area;
  late String tipo;

  Rectangulo.cuadrado(int baseR) {
    this.baseR = baseR;
    this.altura = baseR;
    this.area = baseR * baseR;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int baseR, int altura) {
    this.baseR = baseR;
    this.altura = altura;
    this.area = baseR * altura;
    this.tipo = 'Rectangulo';
  }

  factory Rectangulo(int baseR, int altura) {
    if (baseR == altura) {
      return Rectangulo.cuadrado(baseR);
    } else {
      return Rectangulo.rectangulo(baseR, altura);
    }
  }
}

void main() {
  final figura1 = Rectangulo.cuadrado(10);

  print(figura1.area);
  print(figura1.tipo);

  final figura2 = Rectangulo.rectangulo(10, 2);

  print(figura2.area);
  print(figura2.tipo);

  final figura3 = Rectangulo(10, 1);

  print(figura3.tipo);
}
