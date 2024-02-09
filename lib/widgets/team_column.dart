import 'package:basketball_points_counter_app/widgets/counter_button.dart';
import 'package:flutter/material.dart';

class TeamColumn extends StatefulWidget {
  TeamColumn({super.key, required this.teamName, required this.teamCount});
  final String teamName;
  int teamCount;

  @override
  State<TeamColumn> createState() => _TeamColumnState();
}

class _TeamColumnState extends State<TeamColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.teamName,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          '${widget.teamCount}',
          style: const TextStyle(fontSize: 70),
        ),
        CounterButton(
          counterText: '+1 Point',
          count: () {
            setState(() {
              widget.teamCount++;
            });
          },
        ),
        CounterButton(
          counterText: '+2 Point',
          count: () {
            setState(() {
              widget.teamCount += 2;
            });
          },
        ),
        CounterButton(
          counterText: '+3 Point',
          count: () {
            setState(() {
              widget.teamCount += 3;
            });
          },
        )
      ],
    );
  }
}
