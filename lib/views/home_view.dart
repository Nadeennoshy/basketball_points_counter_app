import 'package:basketball_points_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:basketball_points_counter_app/widgets/reset_button.dart';
import 'package:basketball_points_counter_app/widgets/team_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff4052B6),
            title: const Text(
              'Basketball Score Counter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TeamColumn(
                      teamName: 'A',
                      teamCount:
                          BlocProvider.of<CounterCubit>(context).teamAPoints,
                    ),
                    const VerticalDivider(),
                    TeamColumn(
                      teamName: 'B',
                      teamCount:
                          BlocProvider.of<CounterCubit>(context).teamBPoints,
                    ),
                  ],
                ),
              ),
              ResetButton(
                reset: () {
                  BlocProvider.of<CounterCubit>(context).resetCount();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
