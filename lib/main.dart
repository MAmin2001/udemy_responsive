import 'package:bloc/bloc.dart';
import 'package:bloc_statment/shared/bloc_observer.dart';
import 'package:bloc_statment/ui/screens/counter/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc statement',
      home:  CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

