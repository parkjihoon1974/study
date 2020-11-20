//import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  List<int> numbers=[1,200,300,400,500];
  List<double> dnumbers=[10.0,0.233,3.56,4.00,5.00];

  num maxValue = max(numbers[0], dnumbers[0]);
  print ('maxValue : $maxValue');
  List<int> randomNumbers = _makeRandomNumbers(10, 8);
 print('random number(0..9 is $randomNumbers');
}

List<int> _makeRandomNumbers(int max, int counts) {
  Random rand = Random();
  List<int> res = List();
  for(int i=0; i<counts; ++i){
    res.add(rand.nextInt(max));
  }
  return res;
}