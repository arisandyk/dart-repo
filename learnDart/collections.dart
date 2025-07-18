import 'dart:io';

void main(){
  // var daftarBarang = ['Telur', 'Susu', 'Minyak', 'Beras'];
  // daftarBarang.add('Daging');
  // daftarBarang.insert(0, 'Air');
  // daftarBarang[1] = 'Sayuran';
  // daftarBarang.removeAt(5);
  // daftarBarang.removeRange(0, 4);
  // daftarBarang.removeLast();
  // print(daftarBarang);

  // Spread Operator
  // var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  // var others = ['Cake', 'Pie', 'Donut'];
  // var allFavoritesTanpaSpread = [favorites, others]; // Akan print dua list
  // var allFavorites = [...favorites, ...others]; // Menggabungkan dua list
  // print(allFavorites);
  // Fitur Belanja
  menuBelanja();
}

void menuBelanja(){
  var daftarBarang = ['Telur', 'Susu', 'Minyak', 'Beras'];
  var daftarBelanja = [];
  var konfirmasiMengulang = true;

  while(konfirmasiMengulang){
    stdout.write('Berikut merupakan daftar belanja yang tersedia di Supermarket: \n'
        '1. Telur\n'
        '2. Susu\n'
        '3. Minyak\n'
        '4. Beras\n'
        'Silahkan pilih angka berapa yang ingin ditambahkan ke kerangjang belanja: ');

    int barangPilihan = int.parse(stdin.readLineSync()!);
    switch(barangPilihan){
      case 1:
        var barang = 'Telur';
        daftarBelanja.add(barang);
        print('Berikut daftar barang yang ada dikeranjang anda: \n'
            '$daftarBelanja');
        break;
      case 2:
        var barang = 'Susu';
        daftarBelanja.add(barang);
        print('Berikut daftar barang yang ada dikeranjang anda: \n'
            '$daftarBelanja');
        break;
      case 3:
        var barang = 'Minyak';
        daftarBelanja.add(barang);
        print('Berikut daftar barang yang ada dikeranjang anda: \n'
            '$daftarBelanja');
        break;
      case 4:
        var barang = 'Beras';
        daftarBelanja.add(barang);
        print('Berikut daftar barang yang ada dikeranjang anda: \n'
            '$daftarBelanja');
        break;
      default:
        print('Maaf produk tersebut sedang kosong ya!');
    }

    stdout.write('Apakah ada produk yang ingin anda cancel? (y/n): ');
    var pilihanCancel = stdin.readLineSync();
    if(pilihanCancel == 'y'){
      stdout.write('Silahkan ketik nama produk yang ingin anda cancel\n'
          '(telur,susu,minyak,beras) :');
      var produkCancel = stdin.readLineSync();
      if(produkCancel == 'telur'){
        daftarBelanja.removeWhere((item) => item.toLowerCase().contains('telur'));
      } else if(produkCancel == 'susu'){
        daftarBelanja.removeWhere((item) => item.toLowerCase().contains('susu'));
      } else if(produkCancel == 'minyak'){
        daftarBelanja.removeWhere((item) => item.toLowerCase().contains('minyak'));
      } else if(produkCancel == 'beras'){
        daftarBelanja.removeWhere((item) => item.toLowerCase().contains('beras'));
      } else{
        print('Produk tersebut tidak ada didalam daftar belanja!');
      }
    } else{
      print('Baik saya anggap anda sudah yakin dengan produk yang ingin anda beli!');
    }

    stdout.write('Apakah anda ingin membeli produk kembali? (y/n): ');
    var pilihanMengulang = stdin.readLineSync();
    if(pilihanMengulang == 'y'){
      konfirmasiMengulang = true;
    } else {
      konfirmasiMengulang = false;
      print('Berikut daftar produk belanja akhir anda ya $daftarBelanja\n'
          'Terimakasih sudah belanja di toko kami :) ');
    }
  }
}