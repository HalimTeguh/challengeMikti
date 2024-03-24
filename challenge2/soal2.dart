import 'dart:io';

void main() {
  print("\n===== Program BMI =====\n");

  // Data Uji 1
  // var mark = {'massa': 78, 'tinggi': 1.69};
  // var john = {'massa': 92, 'tinggi': 1.95};

  // Data Uji 2
  var mark = {'massa': 95, 'tinggi': 1.88};
  var john = {'massa': 85, 'tinggi': 1.76};

  
  bool markHigherBMI = false;

  // perhitungan BMI mark dan john
  var markBMI = calculateBMI(mark['massa']!, mark['tinggi']!);
  var johnBMI = calculateBMI(john['massa']!, john['tinggi']!);

  if(markBMI > johnBMI){
    markHigherBMI = true;
  }else{
    markHigherBMI = false;
  }

  print("BMI Mark lebih tinggi daripada John : $markHigherBMI");

  print("\n===== Program Selesai =====\n");

}

double calculateBMI(num massa, num tinggi){
  try{
    return massa / (tinggi * tinggi);
  }catch(e){
    print("Terdapat Error: $e");
    return 0;
  }
}