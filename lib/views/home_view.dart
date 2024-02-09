import 'package:basketball_points_counter_app/widgets/reset_button.dart';
import 'package:basketball_points_counter_app/widgets/team_column.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int teamCount = 0;
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
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamColumn(teamName: 'Team A',
                teamCount: teamCount,
                ),
                const VerticalDivider(),
                TeamColumn(teamName: 'Team B',
                teamCount: teamCount,
                ),
              ],
            ),
          ),
          ResetButton(
            reset: (){
              setState(() {
              teamCount = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
