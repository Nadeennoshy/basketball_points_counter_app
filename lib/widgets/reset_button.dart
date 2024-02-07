import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {},
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
