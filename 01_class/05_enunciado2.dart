import 'dart:math';

class Triangulo {
  double lado1;
  double lado2;
  double lado3;

  Triangulo(this.lado1, this.lado2, this.lado3);

  Triangulo.equilatero(double lado) : this(lado, lado, lado);

  double calcularPerimetro() {
    return lado1 + lado2 + lado3;
  }

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
  }

  static bool esTrianguloValido(double lado1, double lado2, double lado3) {
    return lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1;
  }
}

void main() {
  final triangulo1 = Triangulo(4, 2, 8);
  final triangulo2 = Triangulo.equilatero(4);

  print("Área del triangulo 1: ${triangulo1.calcularArea()}");
  print("Perímetro del triangulo 1: ${triangulo1.calcularPerimetro()}");

  print("Área del triangulo 2: ${triangulo2.calcularArea()}");
  print("Perímetro del triangulo 2: ${triangulo2.calcularPerimetro()}");

  print("¿Es el triángulo con lados 4, 2, 8 válido? ${Triangulo.esTrianguloValido(4, 2, 8)}");
  print("¿Es el triángulo con lados 3, 4, 5 válido? ${Triangulo.esTrianguloValido(3, 4, 5)}");
}
