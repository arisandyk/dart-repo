enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  // properti 'rainAmount'
  final int rainAmount;

  // Constructor untuk mengisi nilai rainAmount
  const Weather(this.rainAmount);

  // Method toString di-override untuk format cetak yang custom
  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}

void main() {
  var todayWeather = Weather.rain;

  print('--- Info Cuaca dari toString() ---');
  print(todayWeather);

  print('\n--- Saran Aktivitas dari switch ---');
  switch (todayWeather) {
    case Weather.sunny:
      print('Waktu yang bagus untuk pergi ke pantai!');
      break;
    case Weather.cloudy:
      print('Cocok untuk jalan-jalan santai di taman.');
      break;
    case Weather.rain:
      print('Jangan lupa bawa payung atau jas hujan.');
      break;
    case Weather.storm:
      print('Sebaiknya tetap di dalam ruangan, ada badai.');
      break;
  }
}