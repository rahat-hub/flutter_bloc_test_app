
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cudit.dart';
import '../cubit/counter_state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {

    Color getColors({required int i}) {

      final Random random = Random();

      if (i.isEven) {
        return Color.fromRGBO(
          random.nextInt(222),
          random.nextInt(222),
          random.nextInt(222),
          1.0,
        );
      }

      return Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1.0,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text(
              '$state',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: getColors(i: state.counter)),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: Icon(Icons.minimize),
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().reset(),
            child: Icon(Icons.restore),
          ),
        ],
      )
    );
  }
}
