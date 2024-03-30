import 'package:flutter/material.dart';

class OnlyonNetflix extends StatelessWidget {
  final Color ooNColor;
  final String movieTitle;
  const OnlyonNetflix(
      {super.key, required this.ooNColor, required this.movieTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 200,
      decoration: BoxDecoration(
          color: ooNColor, borderRadius: BorderRadius.circular(6)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          'assets/images/avicon.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
