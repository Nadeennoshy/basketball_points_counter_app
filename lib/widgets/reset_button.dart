import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key,required this.reset});
  final Function() reset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: reset,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        fixedSize: const Size(150,50),
        ),
        child: const Text(
          'RESET',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
