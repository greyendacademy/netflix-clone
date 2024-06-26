import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/show_details.dart';
import 'package:netflix_clone/widgets/games.dart';
import 'package:netflix_clone/widgets/mini_profiles.dart';
import 'package:netflix_clone/widgets/only_on_netflix.dart';

class Home extends StatelessWidget {
  final String username;
  const Home({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'For $username',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Icon(Icons.square_outlined, size: 30),
                          Icon(Icons.wifi, size: 18),
                        ],
                      ),
                      SizedBox(width: 14),
                      Icon(Icons.search),
                      SizedBox(width: 14),
                      MiniProfiles(myminicolor: Colors.blue),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: const Text(
                    'TV Shows',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: const Text(
                    'Movies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 450,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        'assets/images/taste.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow),
                          label: const Text("Play"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          label: const Text("Add to List"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black26,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mobile Games',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            'My List',
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                          SizedBox(width: 7),
                          Icon(Icons.arrow_forward_ios,
                              size: 15, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Row(
                            children: [
                              Games(
                                gameColor: Colors.blue,
                                gameName: 'Magi',
                                gameGenre: 'Simulation',
                                imagePath: 'assets/images/magi.jpg',
                              ),
                              SizedBox(width: 7),
                              Games(
                                gameColor: Colors.teal,
                                gameName: 'Naruto',
                                gameGenre: 'Action',
                                imagePath: 'assets/images/naruto.jpg',
                              ),
                              SizedBox(width: 7),
                              Games(
                                gameColor: Colors.teal,
                                gameName: 'Card Blast',
                                gameGenre: 'Logic',
                                imagePath: 'assets/images/cardblast.jpeg',
                              ),
                              SizedBox(width: 7),
                              Games(
                                gameColor: Colors.teal,
                                gameName: 'Dungean',
                                gameGenre: 'Action',
                                imagePath: 'assets/images/dungeon.jpg',
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Only on Netflix',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Row(
                        children: [
                          const OnlyonNetflix(
                            ooNColor: Colors.blue,
                            movieTitle: 'Game Dev Tycoon',
                            imagePath: 'assets/images/carbon.jpg',
                          ),
                          const SizedBox(width: 7),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ShowDetails()),
                              );
                            },
                            child: const OnlyonNetflix(
                              ooNColor: Colors.blue,
                              movieTitle: 'Avatar',
                              imagePath: 'assets/images/avicon.jpg',
                            ),
                          ),
                          const SizedBox(width: 7),
                          const OnlyonNetflix(
                            ooNColor: Colors.blue,
                            movieTitle: 'Game Dev Tycoon',
                            imagePath: 'assets/images/power.jpg',
                          ),
                          const SizedBox(width: 7),
                          const OnlyonNetflix(
                            ooNColor: Colors.blue,
                            movieTitle: 'Game Dev Tycoon',
                            imagePath: 'assets/images/Stranger.jpg',
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Binge-worthy Suspensful Conspiracy TV Dramas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Row(
                            children: [
                              OnlyonNetflix(
                                ooNColor: Colors.blue,
                                movieTitle: 'Game Dev Tycoon',
                                imagePath: 'assets/images/love.jpg',
                              ),
                              SizedBox(width: 7),
                              OnlyonNetflix(
                                ooNColor: Colors.blue,
                                movieTitle: 'Game Dev Tycoon',
                                imagePath: 'assets/images/squid.jpg',
                              ),
                              SizedBox(width: 7),
                              OnlyonNetflix(
                                ooNColor: Colors.blue,
                                movieTitle: 'Game Dev Tycoon',
                                imagePath: 'assets/images/rotten.jpg',
                              ),
                              SizedBox(width: 7),
                              OnlyonNetflix(
                                ooNColor: Colors.blue,
                                movieTitle: 'Game Dev Tycoon',
                                imagePath: 'assets/images/sevenseconds.jpg',
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_library),
              label: "New & Hot",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_rounded),
              label: "Downloads",
            ),
          ],
        ));
  }
}
