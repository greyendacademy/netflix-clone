import 'package:flutter/material.dart';

class EpisodeDetails extends StatelessWidget {
  final Color episodeDisplay;
  final String episodeTitle;
  final String episodeDuration;
  final String episodeSynopsis;

  const EpisodeDetails(
      {super.key,
      required this.episodeDisplay,
      required this.episodeDuration,
      required this.episodeSynopsis,
      required this.episodeTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 130,
                  height: 85,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(16),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: episodeDisplay,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(episodeTitle),
                    Text(episodeDuration),
                  ],
                ),
              ],
            ),
            const Icon(Icons.download_outlined),
          ],
        ),
        Text(episodeSynopsis),
      ],
    );
  }
}
