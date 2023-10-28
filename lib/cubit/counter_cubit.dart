import 'package:bmicalculator/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(WeightCounterState());

  Color maleColor = Colors.teal;
  Color femeleColor = Colors.blueGrey;
  double weight = 50;
  double height = 105.4;
  bool isMale = true;
  void calculator() {
    result = (weight / (height/100 * height/100));
  }

  double result = 16.2;
  String healthNess(double result) {
    if (result >= 30) {
        return "Obese";
    } else if (result >= 25) {
        return "Overweight";
    } else if (result >= 18.5) {
        return "Normal";
    } else {
        return "Underweight";
    }
  }

  void gender({required bool isMale}) {
    this.isMale = isMale;
    if (isMale) {
      maleColor = Colors.teal;
      femeleColor = Colors.blueGrey;
    } else {
      femeleColor = Colors.teal;
      maleColor = Colors.blueGrey;
    }
    emit(GenderState());
  }

  void addWeight() {
    weight++;
    emit(WeightCounterState());
  }

  void removeWeight() {
    if (weight > 0) {
      weight--;
    }
    emit(WeightCounterState());
  }

  void addheight() {
    height++;
    emit(HeightCounterState());
  }

  void removeheight() {
    if (height > 0) {
      height--;
    }
    emit(HeightCounterState());
  }
}
