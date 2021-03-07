import 'dart:math';
class Calculator{
  Calculator({this.height,this.weight});
  final int height,weight;
  double _bmi;
  String bmi(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getresult(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String interpretation(){
    if(_bmi>=25){
      return 'Do exercise regularly to reduce the weight';
    }
    else if(_bmi>18.5){
      return 'Good Physical maintainance';
    }
    else{
      return 'Eat a bit more.';
    }
  }
}