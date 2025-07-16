import 'dart:io';

void main(){
  // decisionForBuy();
  // simpleCalculator();
  makePyramid();
}

void makePyramid(){
  for(int i = 1; i <= 10; i++){
    String bintang = '';
    for(int a = 0; a < i; a++){
      bintang = bintang + '*';
    }
    
    print('Baris ke-$i $bintang');
  }
}

void simpleCalculator(){ // Switch Case
  bool lanjutHitung = true;
  while(lanjutHitung){
    stdout.write('Masukkan angka pertama: ');
    double angkaPertama = double.parse(stdin.readLineSync()!);

    stdout.write('Masukkan angka kedua: ');
    double angkaKedua = double.parse(stdin.readLineSync()!);

    stdout.write('Pilih operator untuk lakukan kalkulasi (1/2/3/4) : \n'
        '1. Operator tambah (+)\n'
        '2. Operator kurang (-)\n'
        '3. Operator kali (*)\n'
        '4. Operator pembagi (/)\n');

    int angkaPilihan = int.parse(stdin.readLineSync()!);
    switch(angkaPilihan){
      case 1:
        var operator = '+';
        print('Operator yang dipilih adalah operator tambah\n');
        print('$angkaPertama $operator $angkaKedua = ${angkaPertama + angkaKedua}');
        break;
      case 2:
        var operator = '-';
        print('Operator yang dipilih adalah operator kurang\n');
        print('$angkaPertama $operator $angkaKedua = ${angkaPertama - angkaKedua}');
        break;
      case 3:
        var operator = '*';
        print('Operator yang dipilih adalah operator kali\n');
        print('$angkaPertama $operator $angkaKedua = ${angkaPertama * angkaKedua}');
        break;
      case 4:
        var operator = '/';
        print('Operator yang dipilih adalah operator pembagi\n');
        print('$angkaPertama $operator $angkaKedua = ${angkaPertama/angkaKedua}');
        break;
      default:
        print('Operator tidak ditemukan');
    }

    stdout.write('apakah anda ingin kembali lakukan perhitungan? (y/n): ');
    var konfirmasiPilihan = stdin.readLineSync();
    if(konfirmasiPilihan == 'y'){
      lanjutHitung = true;
    } else {
      lanjutHitung = false;
    }
  }
}

void decisionForBuy(){ // If Else
  print('Beli 1 botol minyak goreng');
  stdout.write('Apakah di warung ada telur? (y/n): ');
  var inputPilihan = stdin.readLineSync();
  if(inputPilihan == 'y'){
    print('Beli 6 botol minyak goreng');
  } else {
    print('Telurnya tidak ada jadi aku hanya beli 1 botol minyak goreng');
  }
}