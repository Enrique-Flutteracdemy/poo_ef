// Paso 1: Definir una clase abstracta base para los animales.
abstract class Animal {}

// Paso 2: Definir clases abstractas para diferentes tipos de animales.
abstract class Mammal extends Animal {
  void mammal() {
    print("It is a mammal");
  }
}

abstract class Bird extends Animal {
   void bird() {
    print("It is a bird");
  }
}

abstract class Fish extends Animal {
   void fish() {
    print("It is a fish");
  }
}

// Paso 3: Definir clases mixin para comportamientos de movimiento.
mixin Walker {
  void walk() {
    print("Walking...");
  }
}

mixin Swimmer {
  void swim() {
    print("Swimming...");
  }
}

mixin Flyer {
  void fly() {
    print("Flying...");
  }
}

// Paso 4: Definir clases concretas que combinan tipos de animales y comportamientos de movimiento.
class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Swimmer, Flyer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}

// Paso 5: Uso de las clases definidas.
void main() {
  var dolphin = Dolphin();
  dolphin.mammal();
  dolphin.swim(); 
 

  var bat = Bat();
  bat.mammal();
  bat.walk(); 
  bat.fly(); 

  var cat = Cat();
  cat.walk(); 

  var dove = Dove();
  dove.bird();
  dove.walk(); 
  dove.fly(); 

  var duck = Duck();
  duck.walk(); 
  duck.swim(); 
  duck.fly(); 

  var shark = Shark();
  shark.fish();
  shark.swim(); 

  var flyingFish = FlyingFish();
  flyingFish.swim(); 
  flyingFish.fly(); 
}
