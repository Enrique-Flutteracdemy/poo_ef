class Location {
  final double lat;
  final double long;

  // Los constructores constantes se inicializan en el mismo lugar memoria

  const Location({
    required this.lat,
    required this.long,
  });
}

void main() {
  // final String name = "Jose";

  // name = "Enrique";

  final sanFrancisco1 = Location(lat: 18.2345, long: 12.4324);

  final sanFrancisco2 = Location(lat: 18.2345, long: 10.3333);

  print(sanFrancisco1 == sanFrancisco2);

  //NO SE INSTANCIA EN EL MISMO LUGAR DE MEMORIA

  final sanFrancisco3 = Location(lat: 18.2345, long: 10.3333);

  print(sanFrancisco3 == sanFrancisco2);

  // const nombre = "Jose";

  // nombre = "Enrique";

  const sanFrancisco4 = Location(lat: 18.2345, long: 12.4324);

  const sanFrancisco5 = Location(lat: 18.2345, long: 10.3333);

  print(sanFrancisco4 == sanFrancisco5);

  const sanFrancisco6 = Location(lat: 18.2345, long: 10.3333);

  print(sanFrancisco6 == sanFrancisco5);

  // const String name = "Jose";
  // final String name2 = "Jose";

  // print(name2 == name);
  // const List<String> varList = ["Jose", "Maria", "Pepe"];
  final List<String> varList = ["Jose", "Maria", "Pepe"];
  print(varList);

  varList.add("Otro valor");

  print(varList);

  // varList = ["Nueva lista"];

  // print(varList);

  varList.remove("Otro valor");

  print(varList);
}
