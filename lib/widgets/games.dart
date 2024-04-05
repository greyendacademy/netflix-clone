import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  final Color gameColor;
  final String gameName;
  final String gameGenre;
  final String imagePath;
  const Games(
      {super.key,
      required this.gameColor,
      required this.gameName,
      required this.gameGenre, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: gameColor, borderRadius: BorderRadius.circular(23)),
                child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
          ),
          Text(
            gameName,
            style: const TextStyle(fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            gameGenre,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
