import '02_constructores_get_set.dart';

void main() {
  final Persona persona1 = Persona();
  final Persona persona2 = Persona.persona1("Jose");

  print(persona1);
  print(persona2);

  print(persona1.nombre);
  print(persona2.nombre);
  print(persona2.edad);
  print(persona2.bio);

  persona2.bio = "Este es el valor bio modificado";

  print(persona2.bio);

  String nuevoValor = persona2.retornarValor("NUEVO VALORR!!!!!!");

  print(nuevoValor);

  String nuevoValor2 = persona2.toString();

  print(nuevoValor2);
}
