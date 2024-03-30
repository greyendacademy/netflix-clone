import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/episodes_details.dart';

class ShowDetails extends StatelessWidget {
  const ShowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Container(
          height: 200,
          padding: const EdgeInsets.all(16),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 63, 63, 63),
              borderRadius: BorderRadius.circular(0)),
          child: const Row(
            children: [],
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(width: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'N SERIES',
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                'Avatar The Last Airbender',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  const Text('2024'),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 25,
                    height: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 90, 90, 90),
                        borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.center,
                    child: const Text(
                      '13+',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('8 Episodes'),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 25,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'HD',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('AD)))'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.message_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
              const Text(
                'It\'s Official: Seasons 2 and 3 Are Coming',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 380,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 33,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Play',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 380,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 73, 73, 73),
                    ),
                    alignment: Alignment.center,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Download E1',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Avatar The Last Airbender \'Aang\'',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  'An Airbender comes to grips with his new reality as war erupts. A centery later,'
                  'a pair of Water Tribe Siblings make a discovery that changes everything.'),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Cast: Gordon Cormier, Kiawentio, Ian Ousley... more',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(width: 50),
                      Icon(
                        Icons.add,
                        size: 33,
                      ),
                      Text('My List')
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 30,
                      ),
                      Text('Rate')
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Icon(
                        Icons.share_outlined,
                        size: 33,
                      ),
                      Text('My List'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Episodes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Collection',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('More Like This',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Trailers & More',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Avatar The Last Airbender',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.info_rounded),
                ],
              ),
              const SizedBox(height: 5),
              const EpisodeDetails(
                  episodeDisplay: Colors.teal,
                  episodeDuration: '1h 3m',
                  episodeSynopsis:
                      'An Airbender comes to grips with his new reality as war erupts. A centery later,'
                      'a pair of Water Tribe Siblings make a discovery that changes everything.',
                  episodeTitle: '1. Aang'),
              const SizedBox(height: 5),
              const EpisodeDetails(
                  episodeDisplay: Colors.blue,
                  episodeDuration: '48m',
                  episodeSynopsis:
                      'An Airbender comes to grips with his new reality as war erupts. A centery later,'
                      'a pair of Water Tribe Siblings make a discovery that changes everything.',
                  episodeTitle: '2. Warriors'),
              const SizedBox(height: 5),
              const EpisodeDetails(
                  episodeDisplay: Colors.yellow,
                  episodeDuration: '52m',
                  episodeSynopsis:
                      'An Airbender comes to grips with his new reality as war erupts. A centery later,'
                      'a pair of Water Tribe Siblings make a discovery that changes everything.',
                  episodeTitle: '3. Omashu')
            ],
          ),
        ],
      ),
    );
  }
}

