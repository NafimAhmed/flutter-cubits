

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState>{

  int counter=0;


  CounterCubit():super(CounterInitiates());


  void CouterIncrease(){
    counter++;
    emit(CounterValueUpdated(counter: counter));
  }
  void CouterDecrease(){
    counter--;
    emit(CounterValueUpdated(counter: counter));
  }

}