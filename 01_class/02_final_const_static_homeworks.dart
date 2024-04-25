class Circulo {
  static const double pi_valor = 3.14;
  final double radio;

  Circulo(this.radio);

  double calcularArea() {
    return pi_valor * radio * radio;
  }
}

void main() {
  final circulo1 = Circulo(5.0);
  final circulo2 = Circulo(7.0);

  print("Área del círculo 1: ${circulo1.calcularArea()}");
  print("Área del círculo 2: ${circulo2.calcularArea()}");
}
