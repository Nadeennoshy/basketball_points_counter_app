import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key,required this.counterText,required this.count});
  final String counterText;
  final Function() count;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2),),
          backgroundColor: const Color(0xff0396FE),
          fixedSize: const Size(140,50),
        ),
        onPressed: count,
        child: Text(counterText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
