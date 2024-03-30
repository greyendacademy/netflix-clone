import 'package:flutter/material.dart';

class Binge extends StatelessWidget {
  final Color ooNColor;
  final String movieTitle;
  const Binge({super.key, required this.ooNColor, required this.movieTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 130,
      decoration: BoxDecoration(
          color: ooNColor, borderRadius: BorderRadius.circular(6)),
      alignment: Alignment.center,
      child: Text(
        movieTitle,
        style: const TextStyle(fontWeight: FontWeight.bold),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
