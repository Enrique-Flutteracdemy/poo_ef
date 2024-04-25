class Propidades {
  bool encendido = true;

  void encender() {
    encendido = true;
    print("Vehiculo encendido");
  }

  void apagar() {
    encendido = false;
    print("Vehiculo apagado");
  }
}

class Coche extends Propidades {}

class Camion extends Propidades {}

void main() {
  // final newProp = Propidades();
  // newProp.encender();

  final ford = Coche();
  ford.encender();

  final mecedes = Camion();
  mecedes.apagar();
}
