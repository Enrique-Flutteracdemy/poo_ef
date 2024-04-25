class Circulo {
  static const double pi_valor = 3.14;
  final double radio;

  // Constructor primario
  Circulo(this.radio);

  // Constructor nombrado
  Circulo.diametro(double diametro) : radio = diametro / 2;

  // Método para calcular el área
  double calcularArea() {
    return pi_valor * radio * radio;
  }

  // Método para calcular el perímetro
  double calcularPerimetro() {
    return 2 * pi_valor * radio;
  }
}

void main() {
  final circulo1 = Circulo(5.0);
  final circulo2 = Circulo.diametro(10.0);

  print("Área del círculo 1: ${circulo1.calcularArea()}");
  print("Perímetro del círculo 1: ${circulo1.calcularPerimetro()}");

  print("Área del círculo 2: ${circulo2.calcularArea()}");
  print("Perímetro del círculo 2: ${circulo2.calcularPerimetro()}");
}
