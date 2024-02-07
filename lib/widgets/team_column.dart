import 'package:basketball_points_counter_app/widgets/counter_button.dart';
import 'package:flutter/material.dart';

class TeamColumn extends StatelessWidget {
  const TeamColumn({super.key,required this.teamName});
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(teamName,
          style: const TextStyle(
            fontSize: 40,
          ),
          ),
          const Text(
            '0',
            style: TextStyle(fontSize: 70),
          ),
          const CounterButton(counterText: '+1 Point'),
          const CounterButton(counterText: '+2 Point'),
          const CounterButton(counterText: '+3 Point')

        ],
      );
}}