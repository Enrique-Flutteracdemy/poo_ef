class Rectangulo {

  //Vale también con la palabra reservada 'late'
  //late double _base;
  //late double _altura;

  // Inicializamos _base y _altura con valores predeterminados
  double _base = 1;
  double _altura = 1;

  // Constructor 1
  Rectangulo(double base, double altura) {
    this._base = base;
    this._altura = altura;
  }

  // Constructor 2
  Rectangulo.cuadrado(double lado) {
  this._base = lado;
  this._altura = lado;
}



  // Getter para obtener la base privada _base
  double get base => _base;

  // Setter para actualizar la base 
  set base(double valor) {
    if (valor > 0) {
      _base = valor;
    } else {
      print("Error: El valor de la base debe ser mayor que 0");
    }
  }

  // Getter para obtener la altura privada _altura
  double get altura => _altura;

  // Setter para actualizar la altura
  set altura(double valor) {
    if (valor > 0) {
      _altura = valor;
    } else {
      print("Error: El valor de la altura debe ser mayor que 0");
    }
  }

  // Método para calcular el área del rectángulo
  double calcularArea() {
    return _base * _altura;
  }
}

void main() {
  // Crear un rectángulo usando el constructor 1
  Rectangulo rectangulo1 = Rectangulo(5, 10);
  print("Área del rectángulo 1: ${rectangulo1.calcularArea()}");

  // Actualizar la base del rectángulo usando el setter
  rectangulo1.base = 7;
  print("Área del rectángulo 1 después de actualizar la base: ${rectangulo1.calcularArea()}");

  // Crear un rectángulo cuadrado usando el constructor 2
  Rectangulo rectangulo2 = Rectangulo.cuadrado(4);
  print("Área del rectángulo 2 (cuadrado): ${rectangulo2.calcularArea()}");
}
