import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4052B6),
        title: const Text('Basketball Score Counter',
        style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}