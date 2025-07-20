import 'li_animal.dart';
import 'package:belajar_dart/behaviors.dart';

class Cat extends Animal with Walkable,Swimmable {
  final String furColor;

  // Cat(String name, int age, double weight, this.furColor) : super(name, age, weight);
  // super adalah perintah untuk memanggil konstruktor dari class induk (Animal) dan meneruskan parameter name, age, dan weight ke class child (cat)
  Cat(String name, int age, double weight, String furColor)
    : this.furColor = furColor,
      super(name, age, weight);

  void walk() {
    print('$name is walking');
  }
}
