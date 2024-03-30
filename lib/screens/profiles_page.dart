import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home.dart';
import 'package:netflix_clone/widgets/profiles.dart';

class ProfilesPage extends StatelessWidget {
  const ProfilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Who\'s Watching?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leadingWidth: 100,
        actions: const [
          Text(
            'Edit',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 14),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home(
                                      username: 'Kekeli',
                                    )),
                          );
                        },
                        child: const Profile(
                          color: Colors.blue,
                          name: 'Kekeli',
                        ),
                      ),
                      const SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Home(username: 'Home-TV')),
                          );
                        },
                        child: const Profile(
                          color: Colors.red,
                          name: 'Home-TV',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Home(username: 'Magnus')),
                          );
                        },
                        child: const Profile(
                          color: Colors.orange,
                          name: 'Magnus',
                        ),
                      ),
                      const SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Home(username: 'Nunana')),
                          );
                        },
                        child: const Profile(
                          color: Colors.teal,
                          name: 'Nunana',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home(username: 'Kids')),
                  );
                },
                child: const Profile(
                  color: Colors.deepPurple,
                  name: 'Kids',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

