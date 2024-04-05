import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/episode_play.dart';

class EpisodeDetails extends StatelessWidget {
  final Color episodeDisplay;
  final String imagePath;
  final String episodeTitle;
  final String episodeDuration;
  final String episodeSynopsis;

  const EpisodeDetails(
      {super.key,
      required this.episodeDisplay,
      required this.episodeDuration,
      required this.episodeSynopsis,
      required this.episodeTitle,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EpisodePlay()),
                    );
                  },
                  child: Container(
                    width: 130,
                    height: 85,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.all(16),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        color: episodeDisplay,
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Center(
                            child: Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                          size: 40,
                        )),
                      ],
                    ),
                  ),
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
