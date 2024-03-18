import 'dart:io';

void main() {
  print("\n====== Convertion Temperature to Celcius =====\n");

  stdout.write("Masukkan skala suhu: "); // give an intruction to input type of scale temperature
  var skala = stdin.readLineSync()!; // input scale temperature

  // Check the Scale input
  if (skala.toLowerCase() == "fahrenheit" ||
      skala.toLowerCase() == "reamur" ||
      skala.toLowerCase() == "kelvin") {

    stdout.write("Masukkan nilai $skala: "); // give an intruction to input value scale temperature
    var nilai = double.parse(stdin.readLineSync()!); // input value scale temperature

    // display output of the convertion
    print("\nHasil konversi: $nilai derajat $skala = ${convertionTempToCelcius(nilai, skala).toStringAsFixed(2)} derajat celcius");

  } else {
    print("Error: Invalid Scale Input");
  }
    print("\n============== Program Selesai ==============\n");
}

double convertionTempToCelcius(num nilai, String dariSuhu) {
  double hasil = 0;

  try {
    switch (dariSuhu.toLowerCase()) {
      case "fahrenheit":
        hasil = 5 / 9 * (nilai - 32);
        break;
      case "reamur":
        hasil = (5 / 4) * nilai;
        break;
      case "kelvin":
        hasil = nilai - 273.15;
        break;
    }
    return hasil;
  } catch (e) {
    print('Error: $e');
    return hasil;
  }
}
