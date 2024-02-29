import 'package:flutter/material.dart';
import 'package:tobeto_pair_one/screens/home_screen.dart';
import 'package:tobeto_pair_one/video_uploader.dart';
import 'package:tobeto_pair_one/widget/my_drawer.dart';
import 'package:video_player/video_player.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eğitimler"),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.network(
                          "https://ab-ilan.com/wp-content/uploads/2023/08/Istanbul-Kodluyor.jpg",
                          height: 200,
                        ),
                      ),
                    ),
                    Text("""İstanbul kodluyor Proje Aşamaları"""),
                    Container(
                      decoration: BoxDecoration(color: Colors.purple),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPlayerScreen(
                                      videoUrl:
                                          "https://firebasestorage.googleapis.com/v0/b/tobeto-pair-1.appspot.com/o/I%CC%87stanbul%20Kodluyor%20Proje%20As%CC%A7amalar%C4%B1.mp4?alt=media&token=4532f35e-987d-48cd-857a-bc8967d6bd11",
                                    ),
                                  ),
                                );
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    "Eğitime Git",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                  Icon(
                                    Icons.start,
                                    color: Colors.purple,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.network(
                          "https://media.licdn.com/dms/image/D4D22AQF7mgjrDVDbng/feedshare-shrink_800/0/1705327841902?e=2147483647&v=beta&t=euGIQ4rhtVNPaD-FhSdrc4ZZ59EHlDVPq_S8H14ms3Q",
                          height: 200,
                        ),
                      ),
                    ),
                    Text("""Mobil Geliştirici (Flutter)"""),
                    Container(
                      decoration: BoxDecoration(color: Colors.purple),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPlayerScreen(
                                      videoUrl:
                                          "https://firebasestorage.googleapis.com/v0/b/tobeto-pair-1.appspot.com/o/Yaz%C4%B1l%C4%B1mc%C4%B1%20Olmak%20I%CC%87steyenler%20I%CC%87c%CC%A7in%20Tobeto%20I%CC%87le%20Tan%C4%B1s%CC%A7man%C4%B1n%20Tam%20Zaman%C4%B1!.mp4?alt=media&token=3a2430c3-5255-40d2-9630-c94882b3e2a4",
                                    ),
                                  ),
                                );
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    "Eğitime Git",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                  Icon(
                                    Icons.start,
                                    color: Colors.purple,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.network(
                          "https://pbs.twimg.com/profile_images/1516055813911203854/h0vlKiCZ_400x400.jpg",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                    Text("""İstanbul kodluyor Proje Aşamaları"""),
                    Container(
                      decoration: BoxDecoration(color: Colors.purple),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPlayerScreen(
                                      videoUrl:
                                          "https://firebasestorage.googleapis.com/v0/b/tobeto-pair-1.appspot.com/o/Maas%CC%A7%C4%B1ndan%20Memnun%20Deg%CC%86il%20Misin_%20_%20Seni%20Tobeto%20I%CC%87le%20Tan%C4%B1s%CC%A7t%C4%B1ral%C4%B1m.mp4?alt=media&token=2d64434b-8c1c-46c7-b76b-3e1ff6289f9f",
                                    ),
                                  ),
                                );
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    "Eğitime Git",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                  Icon(
                                    Icons.start,
                                    color: Colors.purple,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
