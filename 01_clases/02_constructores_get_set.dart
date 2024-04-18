class Persona {
  // Campos o propiedades
  late String nombre;
  late int edad;
  String _bio = "Hola soy una propiedad PRIVADA";

  // Constuctores
  Persona({
    this.edad = 0,
    this.nombre = 'Soy el nombre inicial',
    // this._bio = "asdfa",
  });

  // Persona.persona1({
  //   this.edad = 0,
  //   this.nombre = 'Soy el nombre inicial',
  // });
  Persona.persona1(String nombre) {
    this.nombre = nombre;
    this.edad = 30;
  }

  //Get y set
  String get bio {
    return _bio;
  }

  void set bio(String texto) {
    _bio = texto;
  }

  // Métodos
  String retornarValor(String nuevo) => nuevo;

  @override
  String toString() => "$nombre $edad $_bio";
}
