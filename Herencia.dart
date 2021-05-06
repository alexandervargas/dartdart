abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

class Dolphin extends Mammal with SwimWixin {}

class Bat extends Mammal with WalkMixin, FlyMixin {}

class Cat extends Mammal with WalkMixin {}

class Dove extends Bird with FlyMixin {}

class Duck extends Bird with WalkMixin {}

class Shark extends Fish with SwimWixin {}

class FlyingFish extends Fish with SwimWixin {}

mixin WalkMixin {
  void walk(String text) => print(" Walk ${text}");
  void velocity() => print("Is very fast");
}

mixin FlyMixin {
  void fly(String text) => print("fly ${text}");
  void velocity() => print("Is very fast");
}

mixin SwimWixin {
  void fly(String text) => print("Swin ${text}");
  void velocity() => print("is very Fast");
}

void main() {
  Bat bat = Bat();
  Cat cat = Cat();
  Dove dove = Dove();
  Duck duck = Duck();
  Shark shark = Shark();

  cat.velocity();
  bat.fly("Vuela ");
  dove.velocity();
  duck.velocity();
  shark.velocity();
}
