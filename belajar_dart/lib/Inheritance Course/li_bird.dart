import 'li_animal.dart';
import 'li_flyable.dart';

class Bird extends Animal implements flyable{
  String featherColor;

  Bird(String name, int age, double weigth, this.featherColor) : super(name, age, weigth);

  @override
  void fly(){
    print('$name is flying');
}

}