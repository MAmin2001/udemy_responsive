import 'package:bloc_statment/ui/screens/counter/cubit/cubit.dart';
import 'package:bloc_statment/ui/screens/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state)=>{},
        builder: (context,state){
           return Scaffold(
            appBar: AppBar(
              title: const Text('Counter Screen'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  FloatingActionButton(onPressed:(){{CounterCubit.get(context).plus();}print('${CounterCubit.get(context).counter}');},child: const Icon(Icons.add),),
                  const SizedBox(width: 20.0,),
                  Text(
                    '${CounterCubit.get(context).counter}',
                    style: const TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20.0,),
                  FloatingActionButton(onPressed:(){{CounterCubit.get(context).minus();}print('${CounterCubit.get(context).counter}');},child: const Icon(Icons.remove),),
                ],
              ),
            ),
          );
        },
      )

      );
  }
}
