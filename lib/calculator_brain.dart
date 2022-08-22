
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:bmi_calculator/calculator_brain.dart';

class CalculatorBrain {
  CalculatorBrain({@required this. height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calc(){
    _bmi= weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi >=18 && _bmi <25){
      return 'Normal Weight';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Eat Less';
    }else if(_bmi >=18 && _bmi <25){
      return 'Good Job';
    }else{
      return 'Eat More';
    }
  }
}