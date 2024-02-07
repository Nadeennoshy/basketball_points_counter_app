import 'package:basketball_points_counter_app/widgets/reset_button.dart';
import 'package:basketball_points_counter_app/widgets/team_column.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Column(
        children: [
          SizedBox(
            height: 400,
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamColumn(teamName: 'Team A'),
                VerticalDivider(),
                TeamColumn(teamName: 'Team B')
              ],
            ),
          ),
          ResetButton(),
        ],
      ),
    );
  }
}
