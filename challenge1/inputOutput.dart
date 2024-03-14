import 'dart:io';

void main(){
  print("==========Selamat Datang============\n");

  // Input Nama
  stdout.write("Masukkan nama Anda: "); // give a instruction to input user name
  String? name = stdin.readLineSync(); // statement to user can input they name

  // Input Age
  stdout.write("Masukkan usia Anda: "); // give a instruction to input age
  int age = int.parse(stdin.readLineSync()!);// statement to user can input they age

  // Output Namd and Age user
  print("Halo $name, usia Anda $age tahun");

}