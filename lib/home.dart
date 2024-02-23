


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/counter_cubit.dart';
import 'package:flutter_cubit/cubit/counter_cubit_state.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: BlocBuilder<CounterCubit,CounterCubitState>(
        builder: (context,state){
          return Center(
            child: Column(
              children: [


                (state is CounterValueUpdated)? Text(state.counter.toString()):Text('0'),



                Row(
                  children: [
                    FloatingActionButton(onPressed: (){
                      context.read<CounterCubit>().CouterIncrease();
                    },child: Icon(Icons.add),),
                    FloatingActionButton(onPressed: (){
                      context.read<CounterCubit>().CouterDecrease();
                    },child: Icon(Icons.remove),),
                  ],
                ),

              ],
            ),
          );
        },
      )
    );
  }
}