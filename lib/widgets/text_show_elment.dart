import 'package:flutter/material.dart';

class TextShowElment extends StatelessWidget {
  const TextShowElment({super.key, required this.info});

  final String info;

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: const TextStyle(
        color: Color.fromARGB(255, 82, 81, 81),
        fontSize: 18,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
