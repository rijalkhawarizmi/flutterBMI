import 'dart:math';

class Calculatebrain{
  int height;
  int weight;
  String gambar;

  Calculatebrain({this.height,this.weight,this.gambar});

  double bmi;
  String hitung(){
    bmi=weight/ pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }


  String getResult(){
    if(bmi>=25){
      return 'Overweight';
    }else if(bmi >18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getIcon(){
    if(bmi>=25){
      return '😲';
    }else if(bmi >18.5){
      return '😎👍';
    }else{
      return '☹️';
    }
  }

}