import 'package:demo_project/bloc/counter/counter_bloc.dart';
import 'package:demo_project/bloc/counter/counter_event.dart';
import 'package:demo_project/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state){
              return Center(child: Text(state.counter.toString(), style: TextStyle(fontSize: 60),));
            }),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounter());
              }, child: Text('Increment')),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){}, child: Text('Decrement')),

            ],
          )
        ],
      ),
    );
  }
}
