import 'package:belajar_dart/Class Course/lc_animal.dart';

void main(List<String> arguments) {
  // General
  var generalAnimal = Animal('', 5, 5.0)
    // Cascade Notation dengan gunakan '..' atau '?..'
    ..name = 'Animal'
    ..eat()
    ..poop();
  print('Umur binatang pada umumnya yaitu : ${generalAnimal.age}');
  print(
    'Berat binatang pada umumnya setelah makan dan poop adalah: ${generalAnimal.weight}',
  );
  print('---------------------');

  // Kucing
  var myCat = Animal.cat('Gray', 4.2);
  myCat.eat();
  myCat.poop();
  print('Umur Kucing: ${myCat.age}');
  print('Berat Kucing: ${myCat.weight}');

  print('---------------------');

  // Kelinci
  var myRabbit = Animal.rabbit('Peter');
  myRabbit.eat();
  myRabbit.sleep();
  print('Umur Kelinci: ${myRabbit.age}');
  print('Berat Kelinci: ${myRabbit.weight}');
}
