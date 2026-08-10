
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          ///
          BlocBuilder<CounterNewBlock, CounterNewState>(
            builder: (context, state) {
              return Text('${state.counterNew}', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
            },
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: (){
                  context.read<CounterNewBlock>().add(CounterNewIncrementEvent());
                },
                child: Text('Tap +', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: (){
                  context.read<CounterNewBlock>().add(CounterNewDecrementEvent());
                },
                child: Text('Tap -', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22)),
              ),

            ],
          ),
        ],
      ),
    ),
  );
}
