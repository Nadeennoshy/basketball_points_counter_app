import 'package:basketball_points_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:basketball_points_counter_app/widgets/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamColumn extends StatelessWidget {
  const TeamColumn({
    super.key,
    required this.teamName,
    required this.teamCount,
  });
  final String teamName;
  final int teamCount;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Text(
              'Team $teamName',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              teamCount.toString(),
              style: const TextStyle(fontSize: 70),
            ),
            CounterButton(
              counterText: '+1 Point',
              count: () {
                BlocProvider.of<CounterCubit>(context)
                    .teamCount(team: teamName, buttonNumber: 1);
              },
            ),
            CounterButton(
              counterText: '+2 Point',
              count: () {
                BlocProvider.of<CounterCubit>(context)
                    .teamCount(team: teamName, buttonNumber: 2);
              },
            ),
            CounterButton(
              counterText: '+3 Point',
              count: () {
                BlocProvider.of<CounterCubit>(context)
                    .teamCount(team: teamName, buttonNumber: 3);
              },
            )
          ],
        );
      },
    );
  }
}
