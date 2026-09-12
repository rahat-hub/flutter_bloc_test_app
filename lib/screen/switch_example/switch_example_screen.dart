
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/switch_example/switch_bloc.dart';
import '../../bloc/switch_example/switch_event.dart';
import '../../bloc/switch_example/switch_states.dart';

class SwitchExampleScreen extends StatelessWidget {
  const SwitchExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Switch Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notifications'),
                BlocBuilder<SwitchBloc, SwitchStates>(
                    buildWhen: (previous, current) => previous.isSwitch != current.isSwitch,
                    builder: (BuildContext context, SwitchStates state) {
                      print("***");
                  return Switch(value: state.isSwitch, onChanged: (value) {
                    context.read<SwitchBloc>().add(EnableAndDisableNotification());
                  });
                })
              ],
            ),

            BlocBuilder<SwitchBloc, SwitchStates>(
                buildWhen: (previous, current) => previous.sliderValue != current.sliderValue,
                builder: (BuildContext context, SwitchStates state) {
                  print("@@@");
              return Container(
                height: 200,
                color: Colors.red.withValues(alpha: state.sliderValue),
              );
            }),

            const SizedBox(height: 30),

            BlocBuilder<SwitchBloc, SwitchStates>(
                buildWhen: (previous, current) => previous.sliderValue != current.sliderValue,
                builder: (BuildContext context, SwitchStates state) {
                  print("&&&");
              return Slider(value: state.sliderValue, onChanged: (value){
                context.read<SwitchBloc>().add(SliderEvents(slider: value));
              });
            })



          ],
        ),
      ),
    );
  }
}
