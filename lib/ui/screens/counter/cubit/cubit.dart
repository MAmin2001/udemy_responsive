


import 'package:bloc/bloc.dart';
import 'package:bloc_statment/ui/screens/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{

  CounterCubit():super(InitialCounterState());
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter =1;



  void plus ()
  {
    counter++;
    emit(PlusCounterState());
  }
  void minus ()
  {
    counter--;
    emit(MinusCounterState());

  }

}