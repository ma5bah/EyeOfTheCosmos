import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  final String text;
  const LevelCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black87,
        border: Border.all(
          color: const Color.fromARGB(172, 255, 255, 255),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            fontSize: 24, color: Colors.amber, fontWeight: FontWeight.bold),
      )),
    );
  }
}
