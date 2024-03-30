import 'package:flutter/material.dart';

class MiniProfiles extends StatelessWidget {
  final Color myminicolor;
  const MiniProfiles({super.key, required this.myminicolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              color: myminicolor, borderRadius: BorderRadius.circular(4)),
        ),
      ],
    );
  }
}
