import 'package:basketball_points_counter_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const BasketballPointsCounterApp());
}
class BasketballPointsCounterApp extends StatelessWidget {
  const BasketballPointsCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}