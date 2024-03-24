import 'dart:io';

void main() {

  print("\n========== Score Count ==========\n");

  var scores = List.generate(2, (i) => List<int>.filled(3, 0)); // insisalisasi penampung array score
  var nameTeam = ['Lumba-lumba', 'Koala']; // inisialisasi nama team

  /*
    data 1 
        Lumba-lumba : 96, 108, 89
        Koala       : 88, 91, 110
    data 2 
        Lumba-lumba : 97, 112, 101
        Koala       : 109, 95, 123
    data 3 
        Lumba-lumba : 97, 112, 101
        Koala       : 109, 95, 106
  */

  // input data score menggunakan perulanagan
  for (var a = 0; a < 2; a++) {
    print("Team ${nameTeam[a]}");
    for (var b = 0; b < 3; b++){
      stdout.write("Score Team ${nameTeam[a]} round ${(b + 1)}: ");
      var nilai = int.parse(stdin.readLineSync()!); // input value scale temperature
      scores[a][b] = nilai;
    }
  }

  var avgTeam = avgScoreTeam(scores); // menampung hasil avgScore tiap team
  compareScoreAvg(avgTeam[0], avgTeam[1]); // melakukan perbandingan pemenang

  print("\n======== End of Program ========\n");

}

// Function ini untuk menghitung rata rata nilai dari tiap team
List avgScoreTeam(List scores){

  List resultAvg = [];

  try{
    for (var a = 0; a < scores.length; a++){
      num temp = 0;
      for (var b = 0; b < scores[0].length; b++){
        temp = temp + scores[a][b];
      }
      var result = double.parse((temp / scores[0].length).toStringAsFixed(2));
      resultAvg.add(result);
    }

    return resultAvg;
  }catch(e) {
    print("Terdapat error: $e");
    return resultAvg;
  }
}

// Function ini untuk membandingkan score team dan menampilkan pemenangnya
void compareScoreAvg(num a, num b){
  var nameTeam = ['Lumba-lumba', 'Koala'];

  print("\nTeam ${nameTeam[0]}'s score is $a, and Team ${nameTeam[1]}'s score is $b.");
  if(a >= 100 && b >= 100){
    if(a == b){
      print("Because the score is the same, so Team ${nameTeam[0]} and Team ${nameTeam[1]} are tied");
    }else if(a > b){
      print("so the winner is Team ${nameTeam[0]} with score $a");
    }else{
      print("so the winner is Team ${nameTeam[1]} with score $b");
    }
  }else if(a < 100 && b >= 100){
    print("Because the score of Team ${nameTeam[0]} is less than 100, so the winner is Team ${nameTeam[1]} with score $b");
  }else if(a >= 100 && b < 100){
    print("Because the score of Team ${nameTeam[1]} is less than 100,so the winner is Team ${nameTeam[0]} with score $a");
  }else{
    print("Because the score of Team ${nameTeam[0]} and Team ${nameTeam[1]} is less than 100, then there is no winner. because the minimum score is 100");
  }

  
}