class Rectangulo {
  late double base;
  late double altura;

  // Constructor primario
  Rectangulo(this.base, this.altura);

  // Constructor nombrado
  Rectangulo.ladoCuadrado(double lado) {
    this.base = lado;
    this.altura = lado;
  }

  // Método para calcular el área
  double calcularArea() {
    return base * altura;
  }

  // Método para calcular el perímetro
  double calcularPerimetro() {
    return base + altura + base + altura;
  }
}

void main() {
  final rectangulo1 = Rectangulo(4, 2);
  final rectangulo2 = Rectangulo.ladoCuadrado(5);

  print("Área del rectangulo 1: ${rectangulo1.calcularArea()}");
  print("Perímetro del rectangulo 1: ${rectangulo1.calcularPerimetro()}");

  print("Área del rectangulo 2: ${rectangulo2.calcularArea()}");
  print("Perímetro del rectangulo 2: ${rectangulo2.calcularPerimetro()}");
}
