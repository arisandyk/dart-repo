import 'dart:io';
import 'dart:math';

dynamic studentInfo() {
  // TODO 1

  var name;
  var favNumber;
  var isDicodingStudent;

  name = 'Ari Sandy Kurniawan';
  favNumber = 10;
  isDicodingStudent = true;

  // End of TODO 1
  return [name, favNumber, isDicodingStudent];
}

dynamic circleArea(num r) {
  if (r < 0) {
    return 0.0;
  } else {


    // TODO 2
    const double pi = 3.1415926535897932; //π sama dengan library dart.math;
    num luasLingkaran = pi * (r * r);



    // End of TODO 2
    return luasLingkaran;
  }
}

int? parseAndAddOne(String? input) {
  // TODO 3
  if(input == null){
    return null;
  }

  try{
    var nomorInputan = int.parse(input);
    return nomorInputan + 1;
  } on FormatException{
    throw Exception('Input harus berupa angka');
  }

  // End of TODO 3
}
